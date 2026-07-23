################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Source/TransformFunctions/TransformFunctionsF16.c \
../Core/Src/Source/TransformFunctions/arm_bitreversal.c \
../Core/Src/Source/TransformFunctions/arm_bitreversal2.c \
../Core/Src/Source/TransformFunctions/arm_bitreversal_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_f64.c \
../Core/Src/Source/TransformFunctions/arm_cfft_init_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_init_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_init_f64.c \
../Core/Src/Source/TransformFunctions/arm_cfft_init_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_init_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.c \
../Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_f16.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_f32.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_q15.c \
../Core/Src/Source/TransformFunctions/arm_mfcc_q31.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.c \
../Core/Src/Source/TransformFunctions/arm_rfft_init_q15.c \
../Core/Src/Source/TransformFunctions/arm_rfft_init_q31.c \
../Core/Src/Source/TransformFunctions/arm_rfft_q15.c \
../Core/Src/Source/TransformFunctions/arm_rfft_q31.c \
../Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.c 

OBJS += \
./Core/Src/Source/TransformFunctions/TransformFunctionsF16.o \
./Core/Src/Source/TransformFunctions/arm_bitreversal.o \
./Core/Src/Source/TransformFunctions/arm_bitreversal2.o \
./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_f64.o \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.o \
./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.o \
./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_f16.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_f32.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_q15.o \
./Core/Src/Source/TransformFunctions/arm_mfcc_q31.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.o \
./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.o \
./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.o \
./Core/Src/Source/TransformFunctions/arm_rfft_q15.o \
./Core/Src/Source/TransformFunctions/arm_rfft_q31.o \
./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.o 

C_DEPS += \
./Core/Src/Source/TransformFunctions/TransformFunctionsF16.d \
./Core/Src/Source/TransformFunctions/arm_bitreversal.d \
./Core/Src/Source/TransformFunctions/arm_bitreversal2.d \
./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_f64.d \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.d \
./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.d \
./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_f16.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_f32.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_q15.d \
./Core/Src/Source/TransformFunctions/arm_mfcc_q31.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.d \
./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.d \
./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.d \
./Core/Src/Source/TransformFunctions/arm_rfft_q15.d \
./Core/Src/Source/TransformFunctions/arm_rfft_q31.d \
./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Source/TransformFunctions/%.o Core/Src/Source/TransformFunctions/%.su Core/Src/Source/TransformFunctions/%.cyclo: ../Core/Src/Source/TransformFunctions/%.c Core/Src/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/PrivateInclude" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Source-2f-TransformFunctions

clean-Core-2f-Src-2f-Source-2f-TransformFunctions:
	-$(RM) ./Core/Src/Source/TransformFunctions/TransformFunctionsF16.cyclo ./Core/Src/Source/TransformFunctions/TransformFunctionsF16.d ./Core/Src/Source/TransformFunctions/TransformFunctionsF16.o ./Core/Src/Source/TransformFunctions/TransformFunctionsF16.su ./Core/Src/Source/TransformFunctions/arm_bitreversal.cyclo ./Core/Src/Source/TransformFunctions/arm_bitreversal.d ./Core/Src/Source/TransformFunctions/arm_bitreversal.o ./Core/Src/Source/TransformFunctions/arm_bitreversal.su ./Core/Src/Source/TransformFunctions/arm_bitreversal2.cyclo ./Core/Src/Source/TransformFunctions/arm_bitreversal2.d ./Core/Src/Source/TransformFunctions/arm_bitreversal2.o ./Core/Src/Source/TransformFunctions/arm_bitreversal2.su ./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.d ./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.o ./Core/Src/Source/TransformFunctions/arm_bitreversal_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_f64.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_f64.d ./Core/Src/Source/TransformFunctions/arm_cfft_f64.o ./Core/Src/Source/TransformFunctions/arm_cfft_f64.su ./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_init_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_init_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.d ./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.o ./Core/Src/Source/TransformFunctions/arm_cfft_init_f64.su ./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_init_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_init_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_init_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix2_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.cyclo
	-$(RM) ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_f32.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_init_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q15.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix4_q31.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f16.su ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.d ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.o ./Core/Src/Source/TransformFunctions/arm_cfft_radix8_f32.su ./Core/Src/Source/TransformFunctions/arm_mfcc_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_f16.d ./Core/Src/Source/TransformFunctions/arm_mfcc_f16.o ./Core/Src/Source/TransformFunctions/arm_mfcc_f16.su ./Core/Src/Source/TransformFunctions/arm_mfcc_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_f32.d ./Core/Src/Source/TransformFunctions/arm_mfcc_f32.o ./Core/Src/Source/TransformFunctions/arm_mfcc_f32.su ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.d ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.o ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f16.su ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.d ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.o ./Core/Src/Source/TransformFunctions/arm_mfcc_init_f32.su ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.d ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.o ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q15.su ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.d ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.o ./Core/Src/Source/TransformFunctions/arm_mfcc_init_q31.su ./Core/Src/Source/TransformFunctions/arm_mfcc_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_q15.d ./Core/Src/Source/TransformFunctions/arm_mfcc_q15.o ./Core/Src/Source/TransformFunctions/arm_mfcc_q15.su ./Core/Src/Source/TransformFunctions/arm_mfcc_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_mfcc_q31.d ./Core/Src/Source/TransformFunctions/arm_mfcc_q31.o ./Core/Src/Source/TransformFunctions/arm_mfcc_q31.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f16.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f32.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_f64.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f16.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f32.su ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.d ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.o ./Core/Src/Source/TransformFunctions/arm_rfft_fast_init_f64.su ./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.d ./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.o ./Core/Src/Source/TransformFunctions/arm_rfft_init_q15.su ./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.d ./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.o ./Core/Src/Source/TransformFunctions/arm_rfft_init_q31.su ./Core/Src/Source/TransformFunctions/arm_rfft_q15.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_q15.d ./Core/Src/Source/TransformFunctions/arm_rfft_q15.o ./Core/Src/Source/TransformFunctions/arm_rfft_q15.su ./Core/Src/Source/TransformFunctions/arm_rfft_q31.cyclo ./Core/Src/Source/TransformFunctions/arm_rfft_q31.d ./Core/Src/Source/TransformFunctions/arm_rfft_q31.o ./Core/Src/Source/TransformFunctions/arm_rfft_q31.su ./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.cyclo ./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.d
	-$(RM) ./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.o ./Core/Src/Source/TransformFunctions/arm_transform_buffer_sizes.su

.PHONY: clean-Core-2f-Src-2f-Source-2f-TransformFunctions

