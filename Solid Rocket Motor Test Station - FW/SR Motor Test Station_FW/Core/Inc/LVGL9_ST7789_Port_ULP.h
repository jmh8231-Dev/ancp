
/**
 * @file LVGL9_ST7789_Port_ULP.h
 * @brief Ultra-low-mem LVGL v9.2.2 port (1~2 line buffer, no SDRAM)
 */
#pragma once
#include "../../lvgl/lvgl.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef LCD_ROTATION
#define LCD_ROTATION 3
#endif
#ifndef DISP_HOR
#define DISP_HOR 320
#endif
#ifndef DISP_VER
#define DISP_VER 240
#endif
#ifndef ULP_DRAW_ROWS
#define ULP_DRAW_ROWS 20   /* 1 or 2 recommended */
#endif

/* Optional: place LVGL tiny buffer to specific RAM section
   e.g. -D LCD_AHB_SECTION='__attribute__((section(".RAM_D2"),aligned(32)))' */
#ifndef LCD_AHB_SECTION
#define LCD_AHB_SECTION
#endif

void lv_port_disp_init_st7789_v9_ulp(void);

#ifdef __cplusplus
}
#endif
