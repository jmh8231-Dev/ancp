################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.c \
../Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.c \
../Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.c 

OBJS += \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.o \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.o \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.o 

C_DEPS += \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.d \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.d \
./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/widgets/arc/%.o Drivers/lvgl/examples/widgets/arc/%.su Drivers/lvgl/examples/widgets/arc/%.cyclo: ../Drivers/lvgl/examples/widgets/arc/%.c Drivers/lvgl/examples/widgets/arc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-arc

clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-arc:
	-$(RM) ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.cyclo ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.d ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.o ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_1.su ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.cyclo ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.d ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.o ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_2.su ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.cyclo ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.d ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.o ./Drivers/lvgl/examples/widgets/arc/lv_example_arc_3.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-widgets-2f-arc

