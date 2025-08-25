################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c 

OBJS += \
./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/draw/stm32_dma2d/%.o Drivers/lvgl/src/draw/stm32_dma2d/%.su Drivers/lvgl/src/draw/stm32_dma2d/%.cyclo: ../Drivers/lvgl/src/draw/stm32_dma2d/%.c Drivers/lvgl/src/draw/stm32_dma2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/Users/jmh8231/Desktop/CanSAT/Cansat HW SW/2026/FW/SR Motor Test Station_FW/Drivers/lvgl/src" -I"/Users/jmh8231/Desktop/CanSAT/Cansat HW SW/2026/FW/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d

clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d:
	-$(RM) ./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.cyclo ./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.d ./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.o ./Drivers/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d

