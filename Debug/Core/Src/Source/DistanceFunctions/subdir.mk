################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.c \
../Core/Src/Source/DistanceFunctions/arm_boolean_distance.c \
../Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../Core/Src/Source/DistanceFunctions/arm_dice_distance.c \
../Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.c \
../Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.c \
../Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../Core/Src/Source/DistanceFunctions/arm_hamming_distance.c \
../Core/Src/Source/DistanceFunctions/arm_jaccard_distance.c \
../Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.c \
../Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../Core/Src/Source/DistanceFunctions/arm_russellrao_distance.c \
../Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../Core/Src/Source/DistanceFunctions/arm_yule_distance.c 

OBJS += \
./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.o \
./Core/Src/Source/DistanceFunctions/arm_boolean_distance.o \
./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./Core/Src/Source/DistanceFunctions/arm_dice_distance.o \
./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.o \
./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.o \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./Core/Src/Source/DistanceFunctions/arm_hamming_distance.o \
./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.o \
./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.o \
./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.o \
./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./Core/Src/Source/DistanceFunctions/arm_yule_distance.o 

C_DEPS += \
./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.d \
./Core/Src/Source/DistanceFunctions/arm_boolean_distance.d \
./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./Core/Src/Source/DistanceFunctions/arm_dice_distance.d \
./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.d \
./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.d \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./Core/Src/Source/DistanceFunctions/arm_hamming_distance.d \
./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.d \
./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.d \
./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.d \
./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./Core/Src/Source/DistanceFunctions/arm_yule_distance.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Source/DistanceFunctions/%.o Core/Src/Source/DistanceFunctions/%.su Core/Src/Source/DistanceFunctions/%.cyclo: ../Core/Src/Source/DistanceFunctions/%.c Core/Src/Source/DistanceFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/PrivateInclude" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Source-2f-DistanceFunctions

clean-Core-2f-Src-2f-Source-2f-DistanceFunctions:
	-$(RM) ./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.cyclo ./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.d ./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.o ./Core/Src/Source/DistanceFunctions/DistanceFunctionsF16.su ./Core/Src/Source/DistanceFunctions/arm_boolean_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_boolean_distance.d ./Core/Src/Source/DistanceFunctions/arm_boolean_distance.o ./Core/Src/Source/DistanceFunctions/arm_boolean_distance.su ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_braycurtis_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_canberra_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.cyclo ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.d ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.o ./Core/Src/Source/DistanceFunctions/arm_chebyshev_distance_f64.su ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.cyclo ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.d ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.o ./Core/Src/Source/DistanceFunctions/arm_cityblock_distance_f64.su ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_correlation_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.cyclo ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.d ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.o ./Core/Src/Source/DistanceFunctions/arm_cosine_distance_f64.su ./Core/Src/Source/DistanceFunctions/arm_dice_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_dice_distance.d ./Core/Src/Source/DistanceFunctions/arm_dice_distance.o ./Core/Src/Source/DistanceFunctions/arm_dice_distance.su ./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_dtw_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.cyclo ./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.d ./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.o ./Core/Src/Source/DistanceFunctions/arm_dtw_init_window_q7.su ./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.d ./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.o ./Core/Src/Source/DistanceFunctions/arm_dtw_path_f32.su ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.cyclo
	-$(RM) ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.d ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.o ./Core/Src/Source/DistanceFunctions/arm_euclidean_distance_f64.su ./Core/Src/Source/DistanceFunctions/arm_hamming_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_hamming_distance.d ./Core/Src/Source/DistanceFunctions/arm_hamming_distance.o ./Core/Src/Source/DistanceFunctions/arm_hamming_distance.su ./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.d ./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.o ./Core/Src/Source/DistanceFunctions/arm_jaccard_distance.su ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_jensenshannon_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.d ./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.o ./Core/Src/Source/DistanceFunctions/arm_kulsinski_distance.su ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.cyclo ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.d ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.o ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f16.su ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.cyclo ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.d ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.o ./Core/Src/Source/DistanceFunctions/arm_minkowski_distance_f32.su ./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.d ./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.o ./Core/Src/Source/DistanceFunctions/arm_rogerstanimoto_distance.su ./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.d ./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.o ./Core/Src/Source/DistanceFunctions/arm_russellrao_distance.su ./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.d ./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.o ./Core/Src/Source/DistanceFunctions/arm_sokalmichener_distance.su ./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.d ./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.o ./Core/Src/Source/DistanceFunctions/arm_sokalsneath_distance.su ./Core/Src/Source/DistanceFunctions/arm_yule_distance.cyclo ./Core/Src/Source/DistanceFunctions/arm_yule_distance.d ./Core/Src/Source/DistanceFunctions/arm_yule_distance.o ./Core/Src/Source/DistanceFunctions/arm_yule_distance.su

.PHONY: clean-Core-2f-Src-2f-Source-2f-DistanceFunctions

