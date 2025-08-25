
/**
 * @file LCD_2inch_st7789_v9_dma.h
 * @brief ST7789 for STM32H723 SPI4+DMA, LVGL v9 non-blocking flush (no external SDRAM).
 */
#pragma once
#include "DEV_Config_h7.h"
#include <stdbool.h>


#ifdef __cplusplus
extern "C" {
#endif

#define LCD_2IN_WIDTH   240
#define LCD_2IN_HEIGHT  320

typedef struct {
    uint16_t x1, y1, x2, y2;
    const void *px_map; /* lv_color_t* (8/16/32bpp) */
} lcd_area_t;

/* FreeRTOS semaphore integration for flush-wait */
#ifndef LCD_OS_FREERTOS
#define LCD_OS_FREERTOS 0
#endif

#if LCD_OS_FREERTOS
#include "FreeRTOS.h"
#include "semphr.h"
typedef SemaphoreHandle_t lcd_sem_t;
#else
typedef volatile uint8_t lcd_sem_t;
#endif

void LCD_Init(void);
void LCD_SetRotation(uint8_t rot); /* 0..3 */
void LCD_SetBacklight(uint16_t v);

void LCD_FlushSetSemaphore(lcd_sem_t sem);
HAL_StatusTypeDef LCD_FlushArea_StartNB(const lcd_area_t *a);
HAL_StatusTypeDef LCD_FlushArea_Wait(uint32_t timeout_ms);

#ifdef __cplusplus
}
#endif
