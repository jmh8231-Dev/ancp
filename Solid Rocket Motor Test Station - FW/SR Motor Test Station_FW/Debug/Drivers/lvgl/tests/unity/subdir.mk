################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/tests/unity/unity.c 

OBJS += \
./Drivers/lvgl/tests/unity/unity.o 

C_DEPS += \
./Drivers/lvgl/tests/unity/unity.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/tests/unity/%.o Drivers/lvgl/tests/unity/%.su Drivers/lvgl/tests/unity/%.cyclo: ../Drivers/lvgl/tests/unity/%.c Drivers/lvgl/tests/unity/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-tests-2f-unity

clean-Drivers-2f-lvgl-2f-tests-2f-unity:
	-$(RM) ./Drivers/lvgl/tests/unity/unity.cyclo ./Drivers/lvgl/tests/unity/unity.d ./Drivers/lvgl/tests/unity/unity.o ./Drivers/lvgl/tests/unity/unity.su

.PHONY: clean-Drivers-2f-lvgl-2f-tests-2f-unity

