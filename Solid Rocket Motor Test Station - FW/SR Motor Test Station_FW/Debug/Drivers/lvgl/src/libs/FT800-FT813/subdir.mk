################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.c \
../Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.c 

OBJS += \
./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.o \
./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.o 

C_DEPS += \
./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.d \
./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/libs/FT800-FT813/%.o Drivers/lvgl/src/libs/FT800-FT813/%.su Drivers/lvgl/src/libs/FT800-FT813/%.cyclo: ../Drivers/lvgl/src/libs/FT800-FT813/%.c Drivers/lvgl/src/libs/FT800-FT813/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813

clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813:
	-$(RM) ./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.cyclo ./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.d ./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.o ./Drivers/lvgl/src/libs/FT800-FT813/EVE_commands.su ./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.cyclo ./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.d ./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.o ./Drivers/lvgl/src/libs/FT800-FT813/EVE_supplemental.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-FT800-2d-FT813

