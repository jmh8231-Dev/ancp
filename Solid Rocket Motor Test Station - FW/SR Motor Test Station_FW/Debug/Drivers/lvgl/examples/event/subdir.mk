################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/examples/event/lv_example_event_bubble.c \
../Drivers/lvgl/examples/event/lv_example_event_button.c \
../Drivers/lvgl/examples/event/lv_example_event_click.c \
../Drivers/lvgl/examples/event/lv_example_event_draw.c \
../Drivers/lvgl/examples/event/lv_example_event_streak.c \
../Drivers/lvgl/examples/event/lv_example_event_trickle.c 

OBJS += \
./Drivers/lvgl/examples/event/lv_example_event_bubble.o \
./Drivers/lvgl/examples/event/lv_example_event_button.o \
./Drivers/lvgl/examples/event/lv_example_event_click.o \
./Drivers/lvgl/examples/event/lv_example_event_draw.o \
./Drivers/lvgl/examples/event/lv_example_event_streak.o \
./Drivers/lvgl/examples/event/lv_example_event_trickle.o 

C_DEPS += \
./Drivers/lvgl/examples/event/lv_example_event_bubble.d \
./Drivers/lvgl/examples/event/lv_example_event_button.d \
./Drivers/lvgl/examples/event/lv_example_event_click.d \
./Drivers/lvgl/examples/event/lv_example_event_draw.d \
./Drivers/lvgl/examples/event/lv_example_event_streak.d \
./Drivers/lvgl/examples/event/lv_example_event_trickle.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/examples/event/%.o Drivers/lvgl/examples/event/%.su Drivers/lvgl/examples/event/%.cyclo: ../Drivers/lvgl/examples/event/%.c Drivers/lvgl/examples/event/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-examples-2f-event

clean-Drivers-2f-lvgl-2f-examples-2f-event:
	-$(RM) ./Drivers/lvgl/examples/event/lv_example_event_bubble.cyclo ./Drivers/lvgl/examples/event/lv_example_event_bubble.d ./Drivers/lvgl/examples/event/lv_example_event_bubble.o ./Drivers/lvgl/examples/event/lv_example_event_bubble.su ./Drivers/lvgl/examples/event/lv_example_event_button.cyclo ./Drivers/lvgl/examples/event/lv_example_event_button.d ./Drivers/lvgl/examples/event/lv_example_event_button.o ./Drivers/lvgl/examples/event/lv_example_event_button.su ./Drivers/lvgl/examples/event/lv_example_event_click.cyclo ./Drivers/lvgl/examples/event/lv_example_event_click.d ./Drivers/lvgl/examples/event/lv_example_event_click.o ./Drivers/lvgl/examples/event/lv_example_event_click.su ./Drivers/lvgl/examples/event/lv_example_event_draw.cyclo ./Drivers/lvgl/examples/event/lv_example_event_draw.d ./Drivers/lvgl/examples/event/lv_example_event_draw.o ./Drivers/lvgl/examples/event/lv_example_event_draw.su ./Drivers/lvgl/examples/event/lv_example_event_streak.cyclo ./Drivers/lvgl/examples/event/lv_example_event_streak.d ./Drivers/lvgl/examples/event/lv_example_event_streak.o ./Drivers/lvgl/examples/event/lv_example_event_streak.su ./Drivers/lvgl/examples/event/lv_example_event_trickle.cyclo ./Drivers/lvgl/examples/event/lv_example_event_trickle.d ./Drivers/lvgl/examples/event/lv_example_event_trickle.o ./Drivers/lvgl/examples/event/lv_example_event_trickle.su

.PHONY: clean-Drivers-2f-lvgl-2f-examples-2f-event

