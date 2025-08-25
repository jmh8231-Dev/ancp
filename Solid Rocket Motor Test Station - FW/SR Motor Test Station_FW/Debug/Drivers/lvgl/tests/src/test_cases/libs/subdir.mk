################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/tests/src/test_cases/libs/test_barcode.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_bmp.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_freetype.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_libpng.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_memmove.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.c \
../Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.c 

OBJS += \
./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o \
./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.o 

C_DEPS += \
./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d \
./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/tests/src/test_cases/libs/%.o Drivers/lvgl/tests/src/test_cases/libs/%.su Drivers/lvgl/tests/src/test_cases/libs/%.cyclo: ../Drivers/lvgl/tests/src/test_cases/libs/%.c Drivers/lvgl/tests/src/test_cases/libs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl/src" -I"C:/Users/binbe/Desktop/Cansat/Cansat HW SW/2026/FW/SR Motor Test Station/SR Motor Test Station_FW/Drivers/lvgl" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

clean-Drivers-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs:
	-$(RM) ./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.d ./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.o ./Drivers/lvgl/tests/src/test_cases/libs/test_barcode.su ./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.d ./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.o ./Drivers/lvgl/tests/src/test_cases/libs/test_bin_decoder.su ./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.d ./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.o ./Drivers/lvgl/tests/src/test_cases/libs/test_bmp.su ./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.d ./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.o ./Drivers/lvgl/tests/src/test_cases/libs/test_ffmpeg.su ./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.d ./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.o ./Drivers/lvgl/tests/src/test_cases/libs/test_font_stress.su ./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.d ./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.o ./Drivers/lvgl/tests/src/test_cases/libs/test_freetype.su ./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d ./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o ./Drivers/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.su ./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.d ./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.o ./Drivers/lvgl/tests/src/test_cases/libs/test_libpng.su ./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.d ./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.o ./Drivers/lvgl/tests/src/test_cases/libs/test_lodepng.su ./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.d ./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.o ./Drivers/lvgl/tests/src/test_cases/libs/test_memmove.su ./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.d ./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.o ./Drivers/lvgl/tests/src/test_cases/libs/test_qrcode.su ./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.d ./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.o ./Drivers/lvgl/tests/src/test_cases/libs/test_svg_decoder.su ./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d ./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o ./Drivers/lvgl/tests/src/test_cases/libs/test_tiny_ttf.su ./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.cyclo ./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.d ./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.o ./Drivers/lvgl/tests/src/test_cases/libs/test_tjpgd.su

.PHONY: clean-Drivers-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

