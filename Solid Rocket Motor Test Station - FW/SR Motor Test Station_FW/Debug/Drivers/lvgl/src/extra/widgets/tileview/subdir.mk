################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.c 

OBJS += \
./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.o 

C_DEPS += \
./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/extra/widgets/tileview/%.o Drivers/lvgl/src/extra/widgets/tileview/%.su Drivers/lvgl/src/extra/widgets/tileview/%.cyclo: ../Drivers/lvgl/src/extra/widgets/tileview/%.c Drivers/lvgl/src/extra/widgets/tileview/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/Users/jmh8231/Desktop/CanSAT/Cansat HW SW/2026/FW/SR Motor Test Station_FW/Drivers/lvgl/src" -I"/Users/jmh8231/Desktop/CanSAT/Cansat HW SW/2026/FW/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-tileview

clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-tileview:
	-$(RM) ./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.cyclo ./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.d ./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.o ./Drivers/lvgl/src/extra/widgets/tileview/lv_tileview.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-tileview

