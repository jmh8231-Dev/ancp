
/**
 * @file LCD_2inch_st7789_v9_dma.c
 */
#include "LCD_2inch_st7789_v9_dma.h"
#include "lvgl.h"
#include <string.h>

/* ===== Forward decls ===== */
#if (LV_COLOR_DEPTH == 8)
static void lut332_build(void);
#else
static inline void lut332_build(void){}
#endif

/* ===== Pin helpers ===== */
static inline void CS_L(void){ DEV_Digital_Write(DEV_CS_PIN, 0); }
static inline void CS_H(void){ DEV_Digital_Write(DEV_CS_PIN, 1); }
static inline void DC_C(void){ DEV_Digital_Write(DEV_DC_PIN, 0); }
static inline void DC_D(void){ DEV_Digital_Write(DEV_DC_PIN, 1); }

static void wr_cmd(uint8_t c){ CS_L(); DC_C(); DEV_SPI_Transmit1(c); CS_H(); }
static void wr_dat8(uint8_t d){ CS_L(); DC_D(); DEV_SPI_Transmit1(d); CS_H(); }

/* Set address window and keep CS low for RAMWR stream */
static void begin_memwrite_window(uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
    uint16_t xe = x + w - 1, ye = y + h - 1;
    /* CASET */
    wr_cmd(0x2A);
    uint8_t ca[4] = { x>>8, x&0xFF, xe>>8, xe&0xFF };
    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4, ca, 4, HAL_MAX_DELAY); CS_H();
    /* RASET */
    wr_cmd(0x2B);
    uint8_t ra[4] = { y>>8, y&0xFF, ye>>8, ye&0xFF };
    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4, ra, 4, HAL_MAX_DELAY); CS_H();
    /* RAMWR */
    CS_L(); DC_C(); DEV_SPI_Transmit1(0x2C);
    DC_D(); CS_L(); /* keep CS low for stream */
}

void LCD_SetBacklight(uint16_t v){ DEV_SetPWM(v); }
static inline uint16_t be16(uint16_t v){ return (uint16_t)((v<<8)|(v>>8)); }

#if (LV_COLOR_DEPTH == 8)
static uint16_t lut_332_to_565[256];
static void lut332_build(void){
    for (int i=0;i<256;i++){
        uint8_t r3=(i>>5)&7, g3=(i>>2)&7, b2=i&3;
        uint16_t r5=(uint16_t)((r3*255+3)/7)>>3;
        uint16_t g6=(uint16_t)((g3*255+3)/7)>>2;
        uint16_t b5=(uint16_t)((b2*255+1)/3)>>3;
        lut_332_to_565[i] = (uint16_t)((r5<<11)|(g6<<5)|b5);
    }
}
#else
#endif

void LCD_Init(void)
{
    lut332_build();
    DEV_Init();

    /* HW reset */
    DEV_Delay_ms(10);
    DEV_Digital_Write(DEV_RST_PIN,1); DEV_Delay_ms(10);
    DEV_Digital_Write(DEV_RST_PIN,0); DEV_Delay_ms(10);
    DEV_Digital_Write(DEV_RST_PIN,1); DEV_Delay_ms(120);

    /* ST7789 init (SPI: use 16bpp to panel; LVGL may run at 8bpp internally) */
    wr_cmd(0x36); wr_dat8(0x00);      /* MADCTL */
    wr_cmd(0x3A); wr_dat8(0x55);      /* COLMOD = 16bpp (RGB565) */
    wr_cmd(0x21);                     /* INVON */

    wr_cmd(0xB2); { uint8_t b2[]={0x0C,0x0C,0x00,0x33,0x33};
                    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4,b2,sizeof(b2),HAL_MAX_DELAY); CS_H(); }
    wr_cmd(0xB7); wr_dat8(0x35);
    wr_cmd(0xBB); wr_dat8(0x1F);
    wr_cmd(0xC0); wr_dat8(0x2C);
    wr_cmd(0xC2); wr_dat8(0x01);
    wr_cmd(0xC3); wr_dat8(0x12);
    wr_cmd(0xC4); wr_dat8(0x20);
    wr_cmd(0xC6); wr_dat8(0x0F);
    wr_cmd(0xD0); { uint8_t d0[]={0xA4,0xA1};
                    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4,d0,sizeof(d0),HAL_MAX_DELAY); CS_H(); }

    wr_cmd(0xE0); { uint8_t e0[]={0xD0,0x08,0x11,0x08,0x0C,0x15,0x39,0x33,0x50,0x36,0x13,0x14,0x29,0x2D};
                    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4,e0,sizeof(e0),HAL_MAX_DELAY); CS_H(); }
    wr_cmd(0xE1); { uint8_t e1[]={0xD0,0x08,0x10,0x08,0x06,0x06,0x39,0x44,0x51,0x0B,0x16,0x14,0x2F,0x31};
                    CS_L(); DC_D(); (void)HAL_SPI_Transmit(&hspi4,e1,sizeof(e1),HAL_MAX_DELAY); CS_H(); }

    wr_cmd(0x11); DEV_Delay_ms(120);
    wr_cmd(0x29);
    LCD_SetRotation(1);
}

void LCD_SetRotation(uint8_t rot)
{
    uint8_t mad=0x00;
    switch (rot & 3u){
        case 0: mad=0x00; break;
        case 1: mad=0x60; break; /* MX|MV */
        case 2: mad=0xC0; break; /* MX|MY */
        default: mad=0xA0; break;/* MY|MV */
    }
    wr_cmd(0x36); wr_dat8(mad);
}

/* ========= Non-blocking DMA flush (internal ping/pong line buffers) ========= */
#define LINEBUF_MAX_W  (320u)
static uint16_t ping[LINEBUF_MAX_W];
static uint16_t pong[LINEBUF_MAX_W];

typedef struct {
    const uint16_t *next_src;
    uint32_t w;
    uint32_t rows_left;
    uint8_t  dma_buf;   /* 0: ping, 1: pong in-flight */
    uint8_t  ready_buf; /* 0/1 buffer prepared to send next */
    uint8_t  active;
} xfer_t;
static xfer_t xf;

#if LCD_OS_FREERTOS
static lcd_sem_t s_sem = NULL;
#else
static lcd_sem_t s_sem = 0;
#endif

void LCD_FlushSetSemaphore(lcd_sem_t sem){ s_sem = sem; }

/* Prepare one line into dst */
static inline void prep_line(uint16_t *dst, const uint16_t *src16, uint32_t w)
{
#if (LV_COLOR_DEPTH == 8)
    const uint8_t *s = (const uint8_t*)src16;
    for (uint32_t i=0;i<w;i++){ dst[i] = be16(lut_332_to_565[s[i]]); }
#elif (LV_COLOR_DEPTH == 16)
    for (uint32_t i=0;i<w;i++){ dst[i] = be16(src16[i]); }
#elif (LV_COLOR_DEPTH == 32)
    const uint32_t *s = (const uint32_t*)src16;
    for (uint32_t i=0;i<w;i++){
        uint32_t c=s[i];
        uint16_t r5=(c>>19)&0x1F, g6=(c>>10)&0x3F, b5=(c>>3)&0x1F;
        dst[i] = be16((uint16_t)((r5<<11)|(g6<<5)|b5));
    }
#else
# error "Unsupported LV_COLOR_DEPTH"
#endif
}

static inline HAL_StatusTypeDef kick_dma(uint16_t *buf, uint32_t bytes)
{
    return DEV_SPI_Transmit_DMA((UBYTE*)buf, bytes);
}

static void on_dma_cplt(void *u)
{
    (void)u;
    if (!xf.active) return;

    if (--xf.rows_left == 0){
        CS_H();
#if LCD_OS_FREERTOS
        if (s_sem) xSemaphoreGiveFromISR(s_sem, NULL);
#else
        s_sem = 1;
#endif
        xf.active = 0;
        return;
    }

    /* Immediately send pre-prepared buffer */
    uint8_t next = xf.ready_buf;
    uint16_t *send = (next==0)? ping : pong;
    xf.dma_buf = next;
    (void)kick_dma(send, xf.w * 2u);

    /* Prepare subsequent line into the now-free buffer if more remain */
    if (xf.rows_left >= 2){
        uint8_t freeb = (xf.dma_buf ^ 1u);
        uint16_t *prep = (freeb==0)? ping : pong;
        prep_line(prep, xf.next_src, xf.w);
        xf.next_src += xf.w;
        xf.ready_buf = freeb;
    }
}

HAL_StatusTypeDef LCD_FlushArea_StartNB(const lcd_area_t *a)
{
    if (xf.active) return HAL_BUSY;
    uint16_t x=a->x1, y=a->y1, w=(uint16_t)(a->x2-a->x1+1), h=(uint16_t)(a->y2-a->y1+1);
    if (w==0 || h==0) return HAL_OK;
    if (w > LINEBUF_MAX_W) return HAL_ERROR;

    begin_memwrite_window(x,y,w,h);
    DEV_SPI_RegisterTxCpltCallback(on_dma_cplt, NULL);

    xf.w = w; xf.rows_left = h; xf.active = 1;
    const uint16_t *src = (const uint16_t*)a->px_map;

    prep_line(ping, src, w);
    if (h >= 2){
        prep_line(pong, src + w, w);
        xf.ready_buf = 1; xf.next_src = src + 2*w;
    } else {
        xf.ready_buf = 0; xf.next_src = src + w;
    }

    xf.dma_buf = 0;
    return kick_dma(ping, w * 2u);
}

HAL_StatusTypeDef LCD_FlushArea_Wait(uint32_t timeout_ms)
{
#if LCD_OS_FREERTOS
    if (!s_sem) return HAL_ERROR;
    if (xSemaphoreTake(s_sem, pdMS_TO_TICKS(timeout_ms)) == pdTRUE) return HAL_OK;
    return HAL_TIMEOUT;
#else
    uint32_t t0 = HAL_GetTick();
    while (xf.active){
        if ((HAL_GetTick() - t0) > timeout_ms) return HAL_TIMEOUT;
    }
    return HAL_OK;
#endif
}
