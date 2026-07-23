################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Source/SVMFunctions/SVMFunctions.c \
../Core/Src/Source/SVMFunctions/SVMFunctionsF16.c \
../Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./Core/Src/Source/SVMFunctions/SVMFunctions.o \
./Core/Src/Source/SVMFunctions/SVMFunctionsF16.o \
./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./Core/Src/Source/SVMFunctions/SVMFunctions.d \
./Core/Src/Source/SVMFunctions/SVMFunctionsF16.d \
./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Source/SVMFunctions/%.o Core/Src/Source/SVMFunctions/%.su Core/Src/Source/SVMFunctions/%.cyclo: ../Core/Src/Source/SVMFunctions/%.c Core/Src/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/PrivateInclude" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Source-2f-SVMFunctions

clean-Core-2f-Src-2f-Source-2f-SVMFunctions:
	-$(RM) ./Core/Src/Source/SVMFunctions/SVMFunctions.cyclo ./Core/Src/Source/SVMFunctions/SVMFunctions.d ./Core/Src/Source/SVMFunctions/SVMFunctions.o ./Core/Src/Source/SVMFunctions/SVMFunctions.su ./Core/Src/Source/SVMFunctions/SVMFunctionsF16.cyclo ./Core/Src/Source/SVMFunctions/SVMFunctionsF16.d ./Core/Src/Source/SVMFunctions/SVMFunctionsF16.o ./Core/Src/Source/SVMFunctions/SVMFunctionsF16.su ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_linear_init_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_linear_predict_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_rbf_init_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.cyclo ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./Core/Src/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-Core-2f-Src-2f-Source-2f-SVMFunctions

