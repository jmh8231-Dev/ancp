
/**
 * @file DEV_Config_h7.h
 * @brief STM32H723VGT6 glue: SPI4 TX via DMA + TIM3 CH1 PWM (Backlight), OS-aware delay
 */
#pragma once
#include "stm32h7xx_hal.h"
#include "spi.h"
#include "tim.h"
#include "main.h"
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef DEV_OS_FREERTOS
#define DEV_OS_FREERTOS 0      /* 1: FreeRTOS, 0: bare metal */
#endif

/* ===== Pin mapping: use CubeMX-generated symbols (already provided by user) ===== */
#define DEV_CS_PIN     LCD_CS_GPIO_Port,  LCD_CS_Pin
#define DEV_DC_PIN     LCD_DC_GPIO_Port,  LCD_DC_Pin
#define DEV_RST_PIN    LCD_RST_GPIO_Port, LCD_RST_Pin

#define DEV_BL_CCR     (TIM3->CCR1)      /* TIM3 CH1 CCR register (Backlight) */

typedef uint8_t  UBYTE;
typedef uint16_t UWORD;

extern SPI_HandleTypeDef hspi4;
extern TIM_HandleTypeDef htim3;

#define DEV_Digital_Write(_pin, _val) HAL_GPIO_WritePin(_pin, ((_val)==0)? GPIO_PIN_RESET:GPIO_PIN_SET)

/* Init/Exit */
void DEV_Init(void);
void DEV_Exit(void);

/* OS-aware delay (FreeRTOS vTaskDelay when scheduler running, HAL_Delay otherwise; ISR safe) */
void DEV_Delay_ms(uint32_t ms);

/* SPI helpers */
void DEV_SPI_Transmit1(UBYTE b);                                   /* blocking single byte (command/param) */
HAL_StatusTypeDef DEV_SPI_Transmit_DMA(const UBYTE* p, uint32_t len); /* non-blocking DMA */
HAL_StatusTypeDef DEV_SPI_WaitTxDone(uint32_t timeout_ms);
int  DEV_SPI_IsBusy(void);

/* D-Cache helper */
void DEV_Cache_CleanByAddr(const void* p, uint32_t len);

/* Tx-complete callback registration */
typedef void (*dev_spi_tx_cplt_cb_t)(void *user);
void DEV_SPI_RegisterTxCpltCallback(dev_spi_tx_cplt_cb_t cb, void *user);

/* Call this from HAL_SPI_TxCpltCallback (or rely on the weak override here) */
void DEV_OnSpiTxComplete(SPI_HandleTypeDef *hspi);

/* Backlight 0..1000 */
static inline void DEV_SetPWM(uint16_t v){ DEV_BL_CCR = v; }

#ifdef __cplusplus
}
#endif
