################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.c \
../Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.c \
../Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.c 

OBJS += \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.o \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.o \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.o 

C_DEPS += \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.d \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.d \
./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/draw/dma2d/%.o Drivers/lvgl/src/draw/dma2d/%.su Drivers/lvgl/src/draw/dma2d/%.cyclo: ../Drivers/lvgl/src/draw/dma2d/%.c Drivers/lvgl/src/draw/dma2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-dma2d

clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-dma2d:
	-$(RM) ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.cyclo ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.d ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.o ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d.su ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.cyclo ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.d ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.o ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_fill.su ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.cyclo ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.d ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.o ./Drivers/lvgl/src/draw/dma2d/lv_draw_dma2d_img.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-dma2d

