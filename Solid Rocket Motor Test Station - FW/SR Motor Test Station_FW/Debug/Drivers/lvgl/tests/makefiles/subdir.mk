################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/tests/makefiles/test.c 

OBJS += \
./Drivers/lvgl/tests/makefiles/test.o 

C_DEPS += \
./Drivers/lvgl/tests/makefiles/test.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/tests/makefiles/%.o Drivers/lvgl/tests/makefiles/%.su Drivers/lvgl/tests/makefiles/%.cyclo: ../Drivers/lvgl/tests/makefiles/%.c Drivers/lvgl/tests/makefiles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-tests-2f-makefiles

clean-Drivers-2f-lvgl-2f-tests-2f-makefiles:
	-$(RM) ./Drivers/lvgl/tests/makefiles/test.cyclo ./Drivers/lvgl/tests/makefiles/test.d ./Drivers/lvgl/tests/makefiles/test.o ./Drivers/lvgl/tests/makefiles/test.su

.PHONY: clean-Drivers-2f-lvgl-2f-tests-2f-makefiles

