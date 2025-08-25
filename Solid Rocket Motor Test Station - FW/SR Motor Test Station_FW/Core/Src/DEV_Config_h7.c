
/**
 * @file DEV_Config_h7.c
 */
#include "DEV_Config_h7.h"
#include <string.h>

#if DEV_OS_FREERTOS
#include "FreeRTOS.h"
#include "task.h"
#endif

static volatile uint8_t s_spi_tx_busy = 0;
static dev_spi_tx_cplt_cb_t s_user_cb = NULL;
static void *s_user_cb_arg = NULL;

/* Align helpers for cache ops */
static inline uintptr_t a_dn(uintptr_t a, uintptr_t n){ return a & ~(n-1u); }
static inline uintptr_t a_up(uintptr_t a, uintptr_t n){ return (a + (n-1u)) & ~(n-1u); }

void DEV_Init(void)
{
    DEV_Digital_Write(DEV_CS_PIN, 1);
    DEV_Digital_Write(DEV_DC_PIN, 1);
    DEV_Digital_Write(DEV_RST_PIN, 1);
    (void)HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
}

void DEV_Exit(void)
{
    (void)HAL_TIM_PWM_Stop(&htim3, TIM_CHANNEL_1);
    DEV_Digital_Write(DEV_CS_PIN, 0);
    DEV_Digital_Write(DEV_DC_PIN, 0);
    DEV_Digital_Write(DEV_RST_PIN, 0);
}

void DEV_SPI_Transmit1(UBYTE b)
{
    (void)HAL_SPI_Transmit(&hspi4, (uint8_t*)&b, 1, HAL_MAX_DELAY);
}

HAL_StatusTypeDef DEV_SPI_Transmit_DMA(const UBYTE* p, uint32_t len)
{
    if (s_spi_tx_busy) return HAL_BUSY;
    if (len == 0) return HAL_OK;
#if (__DCACHE_PRESENT == 1U)
    uintptr_t s = a_dn((uintptr_t)p, 32u);
    uintptr_t e = a_up((uintptr_t)p + len, 32u);
    SCB_CleanDCache_by_Addr((uint32_t*)s, (int32_t)(e - s));
#endif
    s_spi_tx_busy = 1;
    return HAL_SPI_Transmit_DMA(&hspi4, (uint8_t*)p, (uint16_t)len);
}

HAL_StatusTypeDef DEV_SPI_WaitTxDone(uint32_t timeout_ms)
{
    uint32_t t0 = HAL_GetTick();
    while (s_spi_tx_busy) {
        if ((HAL_GetTick() - t0) > timeout_ms) return HAL_TIMEOUT;
    }
    return HAL_OK;
}

int DEV_SPI_IsBusy(void){ return s_spi_tx_busy; }

void DEV_Cache_CleanByAddr(const void* p, uint32_t len)
{
#if (__DCACHE_PRESENT == 1U)
    uintptr_t s = a_dn((uintptr_t)p, 32u);
    uintptr_t e = a_up((uintptr_t)p + len, 32u);
    SCB_CleanDCache_by_Addr((uint32_t*)s, (int32_t)(e - s));
#else
    (void)p; (void)len;
#endif
}

void DEV_SPI_RegisterTxCpltCallback(dev_spi_tx_cplt_cb_t cb, void *user)
{
    s_user_cb = cb; s_user_cb_arg = user;
}

void DEV_OnSpiTxComplete(SPI_HandleTypeDef *hspi)
{
    if (hspi == &hspi4 || hspi->Instance == SPI4) {
        s_spi_tx_busy = 0;
        if (s_user_cb) s_user_cb(s_user_cb_arg);
    }
}

/* Provide weak HAL callback to forward if user doesn't have one */
__weak void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
{
    DEV_OnSpiTxComplete(hspi);
}

/* OS-aware delay */
void DEV_Delay_ms(uint32_t ms)
{
#if DEV_OS_FREERTOS
    if (__get_IPSR() != 0U) { /* ISR */
        uint32_t t0 = HAL_GetTick();
        while ((HAL_GetTick() - t0) < ms) { __NOP(); }
        return;
    }
    if (xTaskGetSchedulerState() == taskSCHEDULER_RUNNING) {
        vTaskDelay(pdMS_TO_TICKS(ms));
        return;
    }
    HAL_Delay(ms);
#else
    HAL_Delay(ms);
#endif
}
