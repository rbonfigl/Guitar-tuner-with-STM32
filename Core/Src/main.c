/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "main.h"

#include <math.h>
#include <stdio.h>
#include <string.h>

#include "arm_math.h"
#include "arm_const_structs.h"
#include "ili9341.h"
#include "ili9341_gfx.h"
#include "ili9341_font.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

SPI_HandleTypeDef hspi1;
DMA_HandleTypeDef hdma_spi1_tx;

TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */

#define FFT_BUFFER_SIZE 1024
#define SAMPLE_RATE 4023
#define HARMONIC_THRESHOLD 45 //percent
#define LOW_PASS 0.65f	//get 80% new note
#define MIN_SIGNAL_AMPLITUDE 10000.0f //threshold for pluck

arm_rfft_fast_instance_f32 fftHandler;
uint16_t adc_buffer[FFT_BUFFER_SIZE*2];
float32_t fftBufIn[FFT_BUFFER_SIZE];
float32_t fftBufOut[FFT_BUFFER_SIZE];
float32_t magnitudes[FFT_BUFFER_SIZE / 2];

volatile uint8_t data_ready_flag = 0;

uint8_t fftFlag = 0;

//LUT
typedef struct{
	float32_t expected_frequency;
	const char* note_name;
}GuitarNote;

const GuitarNote note_table[] = {
	{82.41f,   "E2"},{87.31f,   "F2"},{92.50f,   "F#2"},{98.00f,   "G2"},{103.83f,  "G#2"},
	{110.00f,  "A2"},{116.54f,  "A#2"},{123.47f,  "B2"},{130.81f,  "C3"},{138.59f,  "C#3"},
	{146.83f,  "D3"},{155.56f,  "D#3"},{164.81f,  "E3"},{174.61f,  "F3"},{185.00f,  "F#3"},
	{196.00f,  "G3"},{207.65f,  "G#3"},{220.00f,  "A3"},{233.08f,  "A#3"},{246.94f,  "B3"},
	{261.63f,  "C4"},{277.18f,  "C#4"},{293.66f,  "D4"},{311.13f,  "D#4"},{329.63f,  "E4"},
	{349.23f,  "F4"},{369.99f,  "F#4"},{392.00f,  "G4"},{415.30f,  "G#4"},{440.00f,  "A4"},
	{466.16f,  "A#4"},{493.88f,  "B4"},{523.25f,  "C5"},{554.37f,  "C#5"},{587.33f,  "D5"},
	{622.25f,  "D#5"},{659.26f,  "E5"},{698.46f,  "F5"},{739.99f,  "F#5"},{783.99f,  "G5"},
	{830.61f,  "G#5"},{880.00f,  "A5"},{932.33f,  "A#5"},{987.77f,  "B5"},{1046.50f, "C6"},
	{1108.73f, "C#6"},{1174.66f, "D6"},{1244.51f, "D#6"},{1318.51f, "E6"}
};

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_ADC1_Init(void);
static void MX_TIM2_Init(void);
static void MX_SPI1_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

int16_t get_indicator_x(float detected_freq, float target_freq)
{
    float cents_off = 1200.0f * log2f(detected_freq / target_freq);
    //so indicator stays on bar
    if (cents_off >  45.0f) cents_off =  45.0f;
    if (cents_off < -45.0f) cents_off = -45.0f;
    int16_t x = (int16_t)(155.0f + (cents_off / 50.0f) * 135.0f);
    return x;
}

//get a more precise frequency estimate
float parabolic_interpolate(float32_t *magnitudes, uint32_t peak_index)
{
    if (peak_index < 1 || peak_index >= (FFT_BUFFER_SIZE / 2) - 1)
        return (float)peak_index;

    float left   = magnitudes[peak_index - 1];
    float center = magnitudes[peak_index];
    float right  = magnitudes[peak_index + 1];

    float offset = 0.5f * (left - right) / (left - 2.0f * center + right);

    return (float)peak_index + offset;
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_DMA_Init();
	MX_USART2_UART_Init();
	MX_ADC1_Init();
	MX_TIM2_Init();
	MX_SPI1_Init();
	/* USER CODE BEGIN 2 */

	ili9341_t *lcd = ili9341_new(
		 &hspi1,
		 TFT_RST_GPIO_Port, TFT_RST_Pin,
		 TFT_CS_GPIO_Port, TFT_CS_Pin,
		 TFT_DC_GPIO_Port, TFT_DC_Pin,
		 isoLandscape,
		 NULL, 0,
		 NULL, 0,
		 itsNotSupported,
		 itnNotNormalized
	 );

    ili9341_text_attr_t note;
    note.font = &ili9341_font_16x26;
    note.fg_color = ILI9341_WHITE;
    note.bg_color = ILI9341_DARKGREY;
    note.origin_x = 139;
    note.origin_y = 137;

	ili9341_spi_write_command(lcd, issDisplayTFT, 0x11);//wake up
	ili9341_spi_write_command(lcd, issDisplayTFT, 0x29);// Display on

	ili9341_fill_screen(lcd, ILI9341_BLACK);

	//tuner bar
	ili9341_fill_rect(lcd, ILI9341_RED,    20,  20, 55, 30);  // far left red
	ili9341_fill_rect(lcd, ILI9341_YELLOW, 75,  20, 60, 30);  // left yellow
	ili9341_fill_rect(lcd, ILI9341_GREEN,  130, 20, 70, 30);  // center green
	ili9341_fill_rect(lcd, ILI9341_YELLOW, 185, 20, 65, 30);  // right yellow
	ili9341_fill_rect(lcd, ILI9341_RED,    245, 20, 55, 30);  // far right red

	//note display
	ili9341_fill_circle(lcd, ILI9341_DARKGREY, 155, 150, 40);
	ili9341_draw_string(lcd, note, "A4");

	//sharp/flat
	note.bg_color = ILI9341_BLACK;
	note.origin_x = 3;
	note.origin_y = 23;
	ili9341_draw_string(lcd, note, "b");
	note.origin_x = 300;
	note.origin_y = 23;
	ili9341_draw_string(lcd, note, "#");
	ili9341_fill_rect(lcd, ILI9341_WHITE, 152, 20, 6, 30);

	note.bg_color = ILI9341_DARKGREY;
	note.origin_x = 139;
	note.origin_y = 137;


    //Initialize FFT
    arm_rfft_fast_init_f32(&fftHandler, FFT_BUFFER_SIZE);

    HAL_TIM_Base_Start(&htim2);

    HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc_buffer, FFT_BUFFER_SIZE*2);

    float32_t max_amplitude;
    uint32_t peak_index;
    float calculated_frequency;
    float smoothed_frequency = 0.0f;



	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	/* Infinite loop */
    /* USER CODE BEGIN WHILE */
    while (1)
    {
        if (data_ready_flag != 0)
        {
        	uint16_t *process_buffer;
        	if(data_ready_flag == 1){
        		process_buffer = &adc_buffer[0];
        	}
        	else{
        		process_buffer = &adc_buffer[FFT_BUFFER_SIZE];
        	}

			data_ready_flag = 0;

			//copy from the correct half of buffer
			for (int i = 0; i < FFT_BUFFER_SIZE; i++)
			{
				fftBufIn[i] = (float)process_buffer[i];
			}

            //Remove DC offset
            float mean = 0.0f;
            for(int i = 0; i < FFT_BUFFER_SIZE; i++)
            {
                mean += fftBufIn[i];
            }
            mean /= FFT_BUFFER_SIZE;

            for(int i = 0; i < FFT_BUFFER_SIZE; i++)
            {
                fftBufIn[i] -= mean;
            }

            //Execute Real FFT
            arm_rfft_fast_f32(&fftHandler, fftBufIn, fftBufOut, fftFlag);

            magnitudes[0] = fabsf(fftBufOut[0]); // DC Magnitude

            arm_cmplx_mag_f32(&fftBufOut[2], &magnitudes[1], (FFT_BUFFER_SIZE / 2) - 1);
            arm_max_f32(&magnitudes[1], (FFT_BUFFER_SIZE / 2) - 1, &max_amplitude, &peak_index);

            peak_index += 1;

            if(max_amplitude > MIN_SIGNAL_AMPLITUDE){

				//filtering out harmonics
            	uint32_t fundamental_index = peak_index;
				for(int i = 21; i < peak_index; i++){
					//if amplitude is greater then threshold (filter out background noise
					if(max_amplitude * .3 <= magnitudes[i]){
						fundamental_index = i;
						if(i != FFT_BUFFER_SIZE-1){
							if((magnitudes[i] > magnitudes[i+1]) && (magnitudes[i] > magnitudes[i - 1])){
								fundamental_index = i;
								break;
							}
						}
					}
				}
				float true_index = parabolic_interpolate(magnitudes, fundamental_index);
				float raw_frequency = true_index * ((float)SAMPLE_RATE / (float)FFT_BUFFER_SIZE);
				if (smoothed_frequency == 0.0f)
					smoothed_frequency = raw_frequency;
				else
					smoothed_frequency = LOW_PASS * raw_frequency + (1.0f - LOW_PASS) * smoothed_frequency;

				calculated_frequency = smoothed_frequency;


				float current_max_diff = 1000000;
				const char* closest_note = "N/A";
				float target_freq = 0.0f;
				for(int i = 0; i < (sizeof(note_table)/sizeof(note_table[0])); i++){
					float diff = fabsf(calculated_frequency - note_table[i].expected_frequency);

					if(diff < current_max_diff){
						current_max_diff = diff;
						closest_note = note_table[i].note_name;
						target_freq = note_table[i].expected_frequency;
					}
				}

				static int16_t prev_ind_x = 155;  // starts centered

				ili9341_color_t erase_color;
				if      (prev_ind_x < 75)  erase_color = ILI9341_RED;
				else if (prev_ind_x < 130) erase_color = ILI9341_YELLOW;
				else if (prev_ind_x < 200) erase_color = ILI9341_GREEN;
				else if (prev_ind_x < 245) erase_color = ILI9341_YELLOW;
				else                        erase_color = ILI9341_RED;

				ili9341_fill_rect(lcd, erase_color, prev_ind_x - 3, 20, 6, 30);

				// draw new indicator
				int16_t ind_x = get_indicator_x(calculated_frequency, target_freq);
				ili9341_fill_rect(lcd, ILI9341_WHITE, ind_x - 3, 20, 6, 30);

				prev_ind_x = ind_x;

				// update note display
				ili9341_fill_circle(lcd, ILI9341_DARKGREY, 155, 150, 40);
				ili9341_draw_string(lcd, note, closest_note);

				char msg[32];
				sprintf(msg, "Freq: %.1f Hz | Note: %s\r\n | ", calculated_frequency,closest_note);
				HAL_UART_Transmit(&huart2, (uint8_t*)msg, strlen(msg), 100);

				char dbg[32];
				sprintf(dbg, "Amp: %.0f\r\n", max_amplitude);
				HAL_UART_Transmit(&huart2, (uint8_t*)dbg, strlen(dbg), 100);
            }
            else{
            	smoothed_frequency = 0.0f;
            }
        }
    }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */

  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc1.Init.ExternalTrigConv = ADC_EXTERNALTRIGCONV_T2_TRGO;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DMAContinuousRequests = ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 20999;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);
  /* DMA2_Stream3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream3_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(TFT_DC_GPIO_Port, TFT_DC_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(TFT_RST_GPIO_Port, TFT_RST_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(TFT_CS_GPIO_Port, TFT_CS_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : TFT_DC_Pin */
  GPIO_InitStruct.Pin = TFT_DC_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(TFT_DC_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : TFT_RST_Pin */
  GPIO_InitStruct.Pin = TFT_RST_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(TFT_RST_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : TFT_CS_Pin */
  GPIO_InitStruct.Pin = TFT_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(TFT_CS_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc) {
    if (hadc->Instance == ADC1) {
        data_ready_flag = 1;
    }
}
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
    if (hadc->Instance == ADC1) {
        data_ready_flag = 2;
    }
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
