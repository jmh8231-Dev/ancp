################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/libs/barcode/code128.c \
../Drivers/lvgl/src/libs/barcode/lv_barcode.c 

OBJS += \
./Drivers/lvgl/src/libs/barcode/code128.o \
./Drivers/lvgl/src/libs/barcode/lv_barcode.o 

C_DEPS += \
./Drivers/lvgl/src/libs/barcode/code128.d \
./Drivers/lvgl/src/libs/barcode/lv_barcode.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/libs/barcode/%.o Drivers/lvgl/src/libs/barcode/%.su Drivers/lvgl/src/libs/barcode/%.cyclo: ../Drivers/lvgl/src/libs/barcode/%.c Drivers/lvgl/src/libs/barcode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-barcode

clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-barcode:
	-$(RM) ./Drivers/lvgl/src/libs/barcode/code128.cyclo ./Drivers/lvgl/src/libs/barcode/code128.d ./Drivers/lvgl/src/libs/barcode/code128.o ./Drivers/lvgl/src/libs/barcode/code128.su ./Drivers/lvgl/src/libs/barcode/lv_barcode.cyclo ./Drivers/lvgl/src/libs/barcode/lv_barcode.d ./Drivers/lvgl/src/libs/barcode/lv_barcode.o ./Drivers/lvgl/src/libs/barcode/lv_barcode.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-barcode

