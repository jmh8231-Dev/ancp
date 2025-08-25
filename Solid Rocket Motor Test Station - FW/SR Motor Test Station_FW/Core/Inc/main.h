/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LCD_SCK_Pin GPIO_PIN_2
#define LCD_SCK_GPIO_Port GPIOE
#define LCD_CS_Pin GPIO_PIN_3
#define LCD_CS_GPIO_Port GPIOE
#define LCD_DC_Pin GPIO_PIN_4
#define LCD_DC_GPIO_Port GPIOE
#define LCD_RST_Pin GPIO_PIN_5
#define LCD_RST_GPIO_Port GPIOE
#define LCD_MOSI_Pin GPIO_PIN_6
#define LCD_MOSI_GPIO_Port GPIOE
#define LD1_Pin GPIO_PIN_13
#define LD1_GPIO_Port GPIOC
#define Main_Cell1_ADC_Pin GPIO_PIN_1
#define Main_Cell1_ADC_GPIO_Port GPIOC
#define Main_Cell2_ADC_Pin GPIO_PIN_2
#define Main_Cell2_ADC_GPIO_Port GPIOC
#define Main_Cell3_ADC_Pin GPIO_PIN_3
#define Main_Cell3_ADC_GPIO_Port GPIOC
#define IGN_Button_Pin GPIO_PIN_0
#define IGN_Button_GPIO_Port GPIOA
#define IGN_Cell1_ADC_Pin GPIO_PIN_1
#define IGN_Cell1_ADC_GPIO_Port GPIOA
#define IGN_Signal_Pin GPIO_PIN_2
#define IGN_Signal_GPIO_Port GPIOA
#define IGN_Cell2_ADC_Pin GPIO_PIN_3
#define IGN_Cell2_ADC_GPIO_Port GPIOA
#define ADS1262_CS_Pin GPIO_PIN_4
#define ADS1262_CS_GPIO_Port GPIOA
#define ADS1262_SCK_Pin GPIO_PIN_5
#define ADS1262_SCK_GPIO_Port GPIOA
#define ADS1262_MISO_Pin GPIO_PIN_6
#define ADS1262_MISO_GPIO_Port GPIOA
#define ADS1262_MOSI_Pin GPIO_PIN_7
#define ADS1262_MOSI_GPIO_Port GPIOA
#define ADS1262_START_Pin GPIO_PIN_4
#define ADS1262_START_GPIO_Port GPIOC
#define ADS1262_RST_Pin GPIO_PIN_5
#define ADS1262_RST_GPIO_Port GPIOC
#define ADS1262_DRDY_Pin GPIO_PIN_0
#define ADS1262_DRDY_GPIO_Port GPIOB
#define Debug_Tx_Pin GPIO_PIN_14
#define Debug_Tx_GPIO_Port GPIOB
#define Debug_Rx_Pin GPIO_PIN_15
#define Debug_Rx_GPIO_Port GPIOB
#define EEPROM_SCL_Pin GPIO_PIN_12
#define EEPROM_SCL_GPIO_Port GPIOD
#define EEPROM_SDA_Pin GPIO_PIN_13
#define EEPROM_SDA_GPIO_Port GPIOD
#define EEPROM_WP_Pin GPIO_PIN_14
#define EEPROM_WP_GPIO_Port GPIOD
#define LCD_BL_Pin GPIO_PIN_6
#define LCD_BL_GPIO_Port GPIOC
#define Buzzer_Pin GPIO_PIN_7
#define Buzzer_GPIO_Port GPIOC
#define INA219_SDA_Pin GPIO_PIN_9
#define INA219_SDA_GPIO_Port GPIOC
#define INA219_SCL_Pin GPIO_PIN_8
#define INA219_SCL_GPIO_Port GPIOA
#define RF_M0_Pin GPIO_PIN_9
#define RF_M0_GPIO_Port GPIOA
#define RF_M1_Pin GPIO_PIN_10
#define RF_M1_GPIO_Port GPIOA
#define RF_Tx_Pin GPIO_PIN_11
#define RF_Tx_GPIO_Port GPIOA
#define RF_Rx_Pin GPIO_PIN_12
#define RF_Rx_GPIO_Port GPIOA
#define F4_Button_Pin GPIO_PIN_0
#define F4_Button_GPIO_Port GPIOD
#define F3_Button_Pin GPIO_PIN_1
#define F3_Button_GPIO_Port GPIOD
#define F2_Button_Pin GPIO_PIN_2
#define F2_Button_GPIO_Port GPIOD
#define F1_Button_Pin GPIO_PIN_3
#define F1_Button_GPIO_Port GPIOD
#define BNO085_INT_Pin GPIO_PIN_4
#define BNO085_INT_GPIO_Port GPIOD
#define BNO085_RST_Pin GPIO_PIN_5
#define BNO085_RST_GPIO_Port GPIOD
#define BNO085_PS0_Pin GPIO_PIN_6
#define BNO085_PS0_GPIO_Port GPIOD
#define BNO085_CS_Pin GPIO_PIN_7
#define BNO085_CS_GPIO_Port GPIOD
#define BNO085_SCK_Pin GPIO_PIN_3
#define BNO085_SCK_GPIO_Port GPIOB
#define BNO085_MISO_Pin GPIO_PIN_4
#define BNO085_MISO_GPIO_Port GPIOB
#define BNO085_MOSI_Pin GPIO_PIN_5
#define BNO085_MOSI_GPIO_Port GPIOB
#define AS6221_SCL_Pin GPIO_PIN_6
#define AS6221_SCL_GPIO_Port GPIOB
#define AS6221_SDA_Pin GPIO_PIN_7
#define AS6221_SDA_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
