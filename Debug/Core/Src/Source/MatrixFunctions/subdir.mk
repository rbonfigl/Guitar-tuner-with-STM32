################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Source/MatrixFunctions/MatrixFunctions.c \
../Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.c \
../Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.c \
../Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.c \
../Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.c \
../Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.c \
../Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.c \
../Core/Src/Source/MatrixFunctions/arm_householder_f16.c \
../Core/Src/Source/MatrixFunctions/arm_householder_f32.c \
../Core/Src/Source/MatrixFunctions/arm_householder_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_add_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_add_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_add_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_add_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_init_q7.c \
../Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.c \
../Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.c \
../Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.c \
../Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.c \
../Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.c \
../Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.c \
../Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.c 

OBJS += \
./Core/Src/Source/MatrixFunctions/MatrixFunctions.o \
./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.o \
./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.o \
./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.o \
./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.o \
./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.o \
./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.o \
./Core/Src/Source/MatrixFunctions/arm_householder_f16.o \
./Core/Src/Source/MatrixFunctions/arm_householder_f32.o \
./Core/Src/Source/MatrixFunctions/arm_householder_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.o \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.o \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.o \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.o \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.o \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.o \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.o \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.o 

C_DEPS += \
./Core/Src/Source/MatrixFunctions/MatrixFunctions.d \
./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.d \
./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.d \
./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.d \
./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.d \
./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.d \
./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.d \
./Core/Src/Source/MatrixFunctions/arm_householder_f16.d \
./Core/Src/Source/MatrixFunctions/arm_householder_f32.d \
./Core/Src/Source/MatrixFunctions/arm_householder_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.d \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.d \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.d \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.d \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.d \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.d \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.d \
./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Source/MatrixFunctions/%.o Core/Src/Source/MatrixFunctions/%.su Core/Src/Source/MatrixFunctions/%.cyclo: ../Core/Src/Source/MatrixFunctions/%.c Core/Src/Source/MatrixFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/PrivateInclude" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/bonfi/Downloads/STM_Projects/DSP_Trial/Core/Inc/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Source-2f-MatrixFunctions

clean-Core-2f-Src-2f-Source-2f-MatrixFunctions:
	-$(RM) ./Core/Src/Source/MatrixFunctions/MatrixFunctions.cyclo ./Core/Src/Source/MatrixFunctions/MatrixFunctions.d ./Core/Src/Source/MatrixFunctions/MatrixFunctions.o ./Core/Src/Source/MatrixFunctions/MatrixFunctions.su ./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.cyclo ./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.d ./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.o ./Core/Src/Source/MatrixFunctions/MatrixFunctionsF16.su ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.cyclo ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.d ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.o ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon.su ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.cyclo ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.d ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.o ./Core/Src/Source/MatrixFunctions/_arm_mat_mult_neon_buffers.su ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.cyclo ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.d ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.o ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_neon.su ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.cyclo ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.d ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.o ./Core/Src/Source/MatrixFunctions/_arm_mat_trans_undef_neon.su ./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.cyclo ./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.d ./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.o ./Core/Src/Source/MatrixFunctions/_arm_mat_vec_mult_neon.su ./Core/Src/Source/MatrixFunctions/arm_householder_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_householder_f16.d ./Core/Src/Source/MatrixFunctions/arm_householder_f16.o ./Core/Src/Source/MatrixFunctions/arm_householder_f16.su ./Core/Src/Source/MatrixFunctions/arm_householder_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_householder_f32.d ./Core/Src/Source/MatrixFunctions/arm_householder_f32.o ./Core/Src/Source/MatrixFunctions/arm_householder_f32.su ./Core/Src/Source/MatrixFunctions/arm_householder_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_householder_f64.d ./Core/Src/Source/MatrixFunctions/arm_householder_f64.o ./Core/Src/Source/MatrixFunctions/arm_householder_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_add_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_add_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_add_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_add_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_cholesky_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.o
	-$(RM) ./Core/Src/Source/MatrixFunctions/arm_mat_init_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_init_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_init_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_init_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_init_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.d ./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.o ./Core/Src/Source/MatrixFunctions/arm_mat_init_q7.su ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_inverse_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_ldlt_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_fast_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_opt_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.d ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.o ./Core/Src/Source/MatrixFunctions/arm_mat_mult_q7.su ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_qr_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_scale_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_scale_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o
	-$(RM) ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_sub_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_sub_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_f64.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.d ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.o ./Core/Src/Source/MatrixFunctions/arm_mat_trans_q7.su ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.d ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.o ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f16.su ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.d ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.o ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_f32.su ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.d ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.o ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q15.su ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.d ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.o ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q31.su ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.cyclo ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.d ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.o ./Core/Src/Source/MatrixFunctions/arm_mat_vec_mult_q7.su

.PHONY: clean-Core-2f-Src-2f-Source-2f-MatrixFunctions

