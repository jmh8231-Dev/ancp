################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/widgets/lottie/lv_lottie.c 

OBJS += \
./Drivers/lvgl/src/widgets/lottie/lv_lottie.o 

C_DEPS += \
./Drivers/lvgl/src/widgets/lottie/lv_lottie.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/widgets/lottie/%.o Drivers/lvgl/src/widgets/lottie/%.su Drivers/lvgl/src/widgets/lottie/%.cyclo: ../Drivers/lvgl/src/widgets/lottie/%.c Drivers/lvgl/src/widgets/lottie/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-widgets-2f-lottie

clean-Drivers-2f-lvgl-2f-src-2f-widgets-2f-lottie:
	-$(RM) ./Drivers/lvgl/src/widgets/lottie/lv_lottie.cyclo ./Drivers/lvgl/src/widgets/lottie/lv_lottie.d ./Drivers/lvgl/src/widgets/lottie/lv_lottie.o ./Drivers/lvgl/src/widgets/lottie/lv_lottie.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-widgets-2f-lottie

