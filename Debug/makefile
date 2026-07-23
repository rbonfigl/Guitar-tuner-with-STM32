################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/Source/WindowFunctions/subdir.mk
-include Core/Src/Source/TransformFunctions/subdir.mk
-include Core/Src/Source/SupportFunctions/subdir.mk
-include Core/Src/Source/StatisticsFunctions/subdir.mk
-include Core/Src/Source/InterpolationFunctions/subdir.mk
-include Core/Src/Source/FilteringFunctions/subdir.mk
-include Core/Src/Source/FastMathFunctions/subdir.mk
-include Core/Src/Source/DistanceFunctions/subdir.mk
-include Core/Src/Source/ControllerFunctions/subdir.mk
-include Core/Src/Source/ComplexMathFunctions/subdir.mk
-include Core/Src/Source/CommonTables/subdir.mk
-include Core/Src/Source/BasicMathFunctions/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := DSP_Trial
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
DSP_Trial.elf \

MAP_FILES += \
DSP_Trial.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
DSP_Trial.list \


# All Target
all: main-build

# Main-build Target
main-build: DSP_Trial.elf secondary-outputs

# Tool invocations
DSP_Trial.elf DSP_Trial.map: $(OBJS) $(USER_OBJS) C:\Users\bonfi\Downloads\STM_Projects\DSP_Trial\STM32F401RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "DSP_Trial.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\bonfi\Downloads\STM_Projects\DSP_Trial\STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="DSP_Trial.map" -Wl,--gc-sections -static -u _printf_float --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

DSP_Trial.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "DSP_Trial.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) DSP_Trial.elf DSP_Trial.list DSP_Trial.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
