
/**
 * @file LVGL9_ST7789_Port_ULP.c
 */
#include "LVGL9_ST7789_Port_ULP.h"
#include "LCD_2inch_st7789_v9_dma.h"
#include "DEV_Config_h7.h"

#if LCD_OS_FREERTOS
#include "FreeRTOS.h"
#include "semphr.h"
static SemaphoreHandle_t s_flush_sem;
#endif

/* One ultra-small LVGL buffer (1~2 lines) */
static LCD_AHB_SECTION lv_color_t s_buf_ultra[DISP_HOR * ULP_DRAW_ROWS];

/* v9 flush: start non-blocking DMA */
static void my_flush_cb(lv_display_t *disp, const lv_area_t *area, void *px_map)
{
    lcd_area_t a = { (uint16_t)area->x1, (uint16_t)area->y1, (uint16_t)area->x2, (uint16_t)area->y2, (const void*)px_map };
    (void)LCD_FlushArea_StartNB(&a);
}

/* v9 flush-wait: wait for DMA done then ready */
static void my_flush_wait_cb(lv_display_t *disp)
{
    (void)LCD_FlushArea_Wait(1000);
    lv_display_flush_ready(disp);
}

void lv_port_disp_init_st7789_v9_ulp(void)
{
    LCD_Init();
    LCD_SetRotation(LCD_ROTATION);
    LCD_SetBacklight(800);

#if LCD_OS_FREERTOS
    s_flush_sem = xSemaphoreCreateBinary();
    LCD_FlushSetSemaphore(s_flush_sem);
#else
    LCD_FlushSetSemaphore(0);
#endif

    lv_display_t *disp = lv_display_create(DISP_HOR, DISP_VER);
    lv_display_set_buffers(disp, s_buf_ultra, NULL, sizeof(s_buf_ultra), LV_DISPLAY_RENDER_MODE_PARTIAL);
    lv_display_set_flush_cb(disp, my_flush_cb);
    lv_display_set_flush_wait_cb(disp, my_flush_wait_cb);
//    lv_display_set_refresh_period(disp, 16); /* ~60 Hz cap */
}
