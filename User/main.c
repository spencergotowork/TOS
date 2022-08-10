/********************************** (C) COPYRIGHT *******************************
* File Name          : main.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main program body.
*******************************************************************************/
#include "debug.h"
#include "tos_k.h"
#include "sdio.h"
#include "lcd_init.h"
#include "lcd.h"
#include "pic.h"
#include "spi_flash.h"
#include "../../Components/lvgl/lvgl.h"
//#include "rtc.h"

/* Global define */

/* Global Variable */
typedef struct
{
    vu8 hour;
    vu8 min;
    vu8 sec;

    vu16 w_year;
    vu8  w_month;
    vu8  w_date;
    vu8  week;
} _calendar_obj;

_calendar_obj calendar;

u8 const table_week[12] = {0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5};
const u8 mon_table[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

/* Exported_Functions */
u8 RTC_Init(void);
u8 Is_Leap_Year(u16 year);
u8 RTC_Alarm_Set(u16 syear, u8 smon, u8 sday, u8 hour, u8 min, u8 sec);
u8 RTC_Get(void);
u8 RTC_Get_Week(u16 year, u8 month, u8 day);
u8 RTC_Set(u16 syear, u8 smon, u8 sday, u8 hour, u8 min, u8 sec);

/*********************************************************************
 * @fn      RTC_NVIC_Config
 *
 * @brief   Initializes RTC Int.
 *
 * @return  none
 */
static void RTC_NVIC_Config(void)
{
    NVIC_InitTypeDef NVIC_InitStructure = {0};
    NVIC_InitStructure.NVIC_IRQChannel = RTC_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

/*********************************************************************
 * @fn      RTC_Init
 *
 * @brief   Initializes RTC collection.
 *
 * @return  1 - Init Fail
 *          0 - Init Success
 */
u8 RTC_Init(void)
{
    u8 temp = 0;
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
    PWR_BackupAccessCmd(ENABLE);

    /* Is it the first configuration */
    if(BKP_ReadBackupRegister(BKP_DR1) != 0xA1A1)
    {
        BKP_DeInit();
        RCC_LSEConfig(RCC_LSE_ON);
        while(RCC_GetFlagStatus(RCC_FLAG_LSERDY) == RESET && temp < 250)
        {
            temp++;
            Delay_Ms(20);
        }
        if(temp >= 250)
            return 1;
        RCC_RTCCLKConfig(RCC_RTCCLKSource_LSE);
        RCC_RTCCLKCmd(ENABLE);
        RTC_WaitForLastTask();
        RTC_WaitForSynchro();
        //      RTC_ITConfig(RTC_IT_ALR, ENABLE);
        RTC_ITConfig(RTC_IT_SEC, ENABLE);
        RTC_WaitForLastTask();
        RTC_EnterConfigMode();
        RTC_SetPrescaler(32767);
        RTC_WaitForLastTask();
        RTC_Set(2022, 8, 6, 18, 58, 50); /* Setup Time */
//        RTC_Alarm_Set(2022, 8, 10, 18, 59, 20); /*Set alarm, pr added*/
        RTC_ExitConfigMode();
        BKP_WriteBackupRegister(BKP_DR1, 0XA1A1);
    }
    else
    {
        RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
        PWR_WakeUpPinCmd(DISABLE);
        RTC_WaitForSynchro();
        //      RTC_ITConfig(RTC_IT_ALR, ENABLE);
        RTC_ITConfig(RTC_IT_SEC, ENABLE);
        RTC_WaitForLastTask();
    }
    RTC_NVIC_Config();
    RTC_Get();

    return 0;
}

/*********************************************************************
 * @fn      Is_Leap_Year
 *
 * @brief   Judging whether it is a leap year.
 *
 * @param   year
 *
 * @return  1 - Yes
 *          0 - No
 */
u8 Is_Leap_Year(u16 year)
{
    if(year % 4 == 0)
    {
        if(year % 100 == 0)
        {
            if(year % 400 == 0)
                return 1;
            else
                return 0;
        }
        else
            return 1;
    }
    else
        return 0;
}

/*********************************************************************
 * @fn      RTC_Set
 *
 * @brief   Set Time.
 *
 * @param   Struct of _calendar_obj
 *
 * @return  1 - error
 *          0 - success
 */
u8 RTC_Set(u16 syear, u8 smon, u8 sday, u8 hour, u8 min, u8 sec)
{
    u16 t;
    u32 seccount = 0;
    if(syear < 1970 || syear > 2099)
        return 1;
    for(t = 1970; t < syear; t++)
    {
        if(Is_Leap_Year(t))
            seccount += 31622400;
        else
            seccount += 31536000;
    }
    smon -= 1;
    for(t = 0; t < smon; t++)
    {
        seccount += (u32)mon_table[t] * 86400;
        if(Is_Leap_Year(syear) && t == 1)
            seccount += 86400;
    }
    seccount += (u32)(sday - 1) * 86400;
    seccount += (u32)hour * 3600;
    seccount += (u32)min * 60;
    seccount += sec;

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
    PWR_BackupAccessCmd(ENABLE);
    RTC_SetCounter(seccount);
    RTC_WaitForLastTask();
    return 0;
}

/*********************************************************************
 * @fn      RTC_Alarm_Set
 *
 * @brief   Set Alarm Time.
 *
 * @param   Struct of _calendar_obj
 *
 * @return  1 - error
 *          0 - success
 */
u8 RTC_Alarm_Set(u16 syear, u8 smon, u8 sday, u8 hour, u8 min, u8 sec)
{
    u16 t;
    u32 seccount = 0;
    if(syear < 1970 || syear > 2099)
        return 1;
    for(t = 1970; t < syear; t++)
    {
        if(Is_Leap_Year(t))
            seccount += 31622400;
        else
            seccount += 31536000;
    }
    smon -= 1;
    for(t = 0; t < smon; t++)
    {
        seccount += (u32)mon_table[t] * 86400;
        if(Is_Leap_Year(syear) && t == 1)
            seccount += 86400;
    }
    seccount += (u32)(sday - 1) * 86400;
    seccount += (u32)hour * 3600;
    seccount += (u32)min * 60;
    seccount += sec;

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
    PWR_BackupAccessCmd(ENABLE);
    RTC_SetAlarm(seccount);
    RTC_WaitForLastTask();

    return 0;
}

/*********************************************************************
 * @fn      RTC_Get
 *
 * @brief   Get current time.
 *
 * @return  1 - error
 *          0 - success
 */
u8 RTC_Get_with_Count(uint32_t timecount)
{
    static u16 daycnt = 0;
//    u32        timecount = 0;
    u32        temp = 0;
    u16        temp1 = 0;
//    timecount = RTC_GetCounter();
    temp = timecount / 86400;
    if(daycnt != temp)
    {
        daycnt = temp;
        temp1 = 1970;
        while(temp >= 365)
        {
            if(Is_Leap_Year(temp1))
            {
                if(temp >= 366)
                    temp -= 366;
                else
                {
                    temp1++;
                    break;
                }
            }
            else
                temp -= 365;
            temp1++;
        }
        calendar.w_year = temp1;
        temp1 = 0;
        while(temp >= 28)
        {
            if(Is_Leap_Year(calendar.w_year) && temp1 == 1)
            {
                if(temp >= 29)
                    temp -= 29;
                else
                    break;
            }
            else
            {
                if(temp >= mon_table[temp1])
                    temp -= mon_table[temp1];
                else
                    break;
            }
            temp1++;
        }
        calendar.w_month = temp1 + 1;
        calendar.w_date = temp + 1;
    }
    temp = timecount % 86400;
    calendar.hour = temp / 3600;
    calendar.min = (temp % 3600) / 60;
    calendar.sec = (temp % 3600) % 60;
    calendar.week = RTC_Get_Week(calendar.w_year, calendar.w_month, calendar.w_date);
    return 0;
}

/*********************************************************************
 * @fn      RTC_Get
 *
 * @brief   Get current time.
 *
 * @return  1 - error
 *          0 - success
 */
u8 RTC_Get(void)
{
    static u16 daycnt = 0;
    u32        timecount = 0;
    u32        temp = 0;
    u16        temp1 = 0;
    timecount = RTC_GetCounter();
    temp = timecount / 86400;
    if(daycnt != temp)
    {
        daycnt = temp;
        temp1 = 1970;
        while(temp >= 365)
        {
            if(Is_Leap_Year(temp1))
            {
                if(temp >= 366)
                    temp -= 366;
                else
                {
                    temp1++;
                    break;
                }
            }
            else
                temp -= 365;
            temp1++;
        }
        calendar.w_year = temp1;
        temp1 = 0;
        while(temp >= 28)
        {
            if(Is_Leap_Year(calendar.w_year) && temp1 == 1)
            {
                if(temp >= 29)
                    temp -= 29;
                else
                    break;
            }
            else
            {
                if(temp >= mon_table[temp1])
                    temp -= mon_table[temp1];
                else
                    break;
            }
            temp1++;
        }
        calendar.w_month = temp1 + 1;
        calendar.w_date = temp + 1;
    }
    temp = timecount % 86400;
    calendar.hour = temp / 3600;
    calendar.min = (temp % 3600) / 60;
    calendar.sec = (temp % 3600) % 60;
    calendar.week = RTC_Get_Week(calendar.w_year, calendar.w_month, calendar.w_date);
    return 0;
}

/*********************************************************************
 * @fn      RTC_Get_Week
 *
 * @brief   Get the current day of the week.
 *
 * @param   year/month/day
 *
 * @return  week
 */
u8 RTC_Get_Week(u16 year, u8 month, u8 day)
{
    u16 temp2;
    u8  yearH, yearL;

    yearH = year / 100;
    yearL = year % 100;
    if(yearH > 19)
        yearL += 100;
    temp2 = yearL + yearL / 4;
    temp2 = temp2 % 7;
    temp2 = temp2 + day + table_week[month - 1];
    if(yearL % 4 == 0 && month < 3)
        temp2--;
    return (temp2 % 7);
}

/*********************************************************************
 * @fn      show_sdcard_info
 *
 * @brief   SD Card information.
 *
 * @return  none
 */
void show_sdcard_info(void)
{
    switch(SDCardInfo.CardType)
    {
        case SDIO_STD_CAPACITY_SD_CARD_V1_1:printf("Card Type:SDSC V1.1\r\n");break;
        case SDIO_STD_CAPACITY_SD_CARD_V2_0:printf("Card Type:SDSC V2.0\r\n");break;
        case SDIO_HIGH_CAPACITY_SD_CARD:printf("Card Type:SDHC V2.0\r\n");break;
        case SDIO_MULTIMEDIA_CARD:printf("Card Type:MMC Card\r\n");break;
    }
    printf("Card ManufacturerID:%d\r\n",SDCardInfo.SD_cid.ManufacturerID);
    printf("Card RCA:%d\r\n",SDCardInfo.RCA);
    printf("Card Capacity:%d MB\r\n",(u32)(SDCardInfo.CardCapacity>>20));
    printf("Card BlockSize:%d\r\n\r\n",SDCardInfo.CardBlockSize);
}
const u8 TEXT_Buf[]={"CH32V307 SPI FLASH W25Qxx"};


#define APPLICATION_TASK_STK_SIZE       4096
k_task_t application_task1;
k_task_t application_task2;
k_task_t application_task3;
__aligned(4) uint8_t application_task_stk1[APPLICATION_TASK_STK_SIZE];
//__aligned(4) uint8_t application_task_stk2[APPLICATION_TASK_STK_SIZE];
__aligned(4) uint8_t application_task_stk3[APPLICATION_TASK_STK_SIZE];

extern void application_entry(void *arg);

volatile uint8_t key=0;

void DrawClock(void)
{
    int r = 90;
    uint16_t center_x = 120, center_y = 150,secondAngle,secondEnd_x,secondEnd_y;
    // 刷新率感人
//    while(1)
//    {
    LCD_Fill(0, 48, 240, 240, 0);
    // 表盘
    Draw_Circle(center_x, center_y, r, 7000);

    //转动秒针
    secondAngle = calendar.sec * 6;    //    2 * pi / 60 =一秒钟走的角度   ti.wSecond  =系统当前秒
    secondEnd_x = center_x + (r * lv_trigo_sin(secondAngle) >> LV_TRIGO_SHIFT);
    secondEnd_y = center_y - (r * lv_trigo_cos(secondAngle) >> LV_TRIGO_SHIFT);
//    printf("secondEnd_x is %u\r\n",secondEnd_x);
//    printf("secondEnd_y is %u\r\n",secondEnd_y);

    LCD_DrawLine(center_x,center_y,secondEnd_x,secondEnd_y,BLUE);

    //转动分钟
    uint16_t minuteAngle = calendar.min * 2 * 3.14 / 60  + secondAngle / 60;
    uint16_t minuteEnd_x = center_x + (72 * lv_trigo_sin(minuteAngle) >> LV_TRIGO_SHIFT);
    uint16_t minuteEnd_y = center_y - (72  * lv_trigo_cos(minuteAngle) >> LV_TRIGO_SHIFT);
    LCD_DrawLine(center_x,center_y,minuteEnd_x,minuteEnd_y,YELLOW);

    //转动时钟
    uint16_t hoursAngle = calendar.hour * 2 * 3.14 / 12 + minuteAngle / 60;
    uint16_t hoursEnd_x = center_x + (45* lv_trigo_sin(hoursAngle)>> LV_TRIGO_SHIFT);
    uint16_t hoursEnd_y = center_y + (45* lv_trigo_cos(hoursAngle)>> LV_TRIGO_SHIFT);
    LCD_DrawLine(center_x,center_y,hoursEnd_x,hoursEnd_y,RED);

//    tos_task_yield();
//    }
//    uint16_t x = 120 + (r * lv_trigo_cos(angle) >> LV_TRIGO_SHIFT), y =
//                120 + (r * lv_trigo_sin(angle) >> LV_TRIGO_SHIFT);
//
//    //转动分钟
//    minuteAngle = ti.wMinute * 2 * pi / 60  + secondAngle / 60;
//    minuteEnd_x = center_x + minuteLenth * sin(minuteAngle);
//    minuteEnd_y = center_y - minuteLenth * cos(minuteAngle);
//
//    //转动时钟
//    hoursAngle = ti.wHour * 2 * pi / 12 + minuteAngle / 60;
//    hoursEnd_x = center_x + hoursLenth * sin(hoursAngle);
//    hoursEnd_y = center_y + hoursLenth * cos(hoursAngle);


}

void clock_entry(void *arg)
{
    DrawClock();
    char str[30];
//    RTC_Get_with_Count(1660752000);
//    printf("year/month/day/week/hour/min/sec:\r\n");
//                printf("%d-%d-%d  %d  %d:%d:%d\r\n", calendar.w_year, calendar.w_month, calendar.w_date,
//                       calendar.week, calendar.hour, calendar.min, calendar.sec);

    while(1)
        {
            int ret;

            memset(str,0,30);
            if((ret= snprintf(str,30,"%4d-%2d-%2d  week:%d", calendar.w_year, calendar.w_month,calendar.w_date, calendar.week)) < 0)
            {
                printf("no\r\n");
                continue;
            }
            LCD_ShowString(0,0,str,WHITE,BLACK,16,0);

//            printf("year/month/day/week/hour/min/sec:\r\n");
//            printf("%d-%d-%d  %d  %d:%d:%d\r\n", calendar.w_year, calendar.w_month, calendar.w_date,
//                   calendar.week, calendar.hour, calendar.min, calendar.sec);
            memset(str,0,30);
            if((ret = snprintf(str,30,"%2d:%2d:%2d", calendar.hour, calendar.min, calendar.sec)) < 0)
            {
                printf("no\r\n");
                continue;
            }
            LCD_ShowString(0,32,str,WHITE,BLACK,16,0);
//            Delay_Ms(1000);
//            tos_task_delay(1000);
            tos_sleep_ms(1000);
//            DrawClock();
        }
}

/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Return         : None
*******************************************************************************/
int main(void)
{
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	Delay_Init();
	USART_Printf_Init(115200);
	printf("SystemClk:%d\r\n",SystemCoreClock);
	//led_key_init();
    LCD_Init();
    SPI_Flash_Init();
    printf("Welcome to TencentOS tiny(%s)\r\n", TOS_VERSION);
    LCD_Fill(0,0,LCD_W,LCD_H,BLACK);
//    LCD_ShowString(0,0,"Welcome to TencentOS",WHITE,BLACK,16,0);

//    LCD_ShowChinese(0,0,"中景园",WHITE,BLACK,32,0);
    printf("the tringle is %d\r\n",lv_trigo_sin(30) >> LV_TRIGO_SHIFT);
    printf("RTC Test\r\n");
    RTC_Init();

//    int r = 90;
//    uint16_t center_x = 120, center_y = 150,secondAngle,secondEnd_x,secondEnd_y;
//    //转动秒针
//    secondAngle = calendar.sec * 6;    //    2 * pi / 60 =一秒钟走的角度   ti.wSecond  =系统当前秒
//    secondEnd_x = center_x + r * lv_trigo_sin(secondAngle) >> LV_TRIGO_SHIFT;
//    secondEnd_y = center_y - r * lv_trigo_cos(secondAngle) >> LV_TRIGO_SHIFT;
//    printf("secondEnd_x is %u\r\n",secondEnd_x);
//    printf("secondEnd_y is %u\r\n",secondEnd_y);
//    LCD_Fill(0, 48, 240, 240, 0);
//    Draw_Circle(center_x, center_y, r, 7000);
//    LCD_DrawLine(center_x,center_y,secondEnd_x,secondEnd_y,100);

    tos_knl_init();
//    tos_task_create(&application_task2, "draw_task", DrawClock, NULL, 4, application_task_stk2, APPLICATION_TASK_STK_SIZE, 0);
    tos_task_create(&application_task3, "application_task3", application_entry, NULL, 4, application_task_stk3, APPLICATION_TASK_STK_SIZE, 0);
    tos_task_create(&application_task1, "application_task", clock_entry, NULL, 4, application_task_stk1, APPLICATION_TASK_STK_SIZE, 0);

//    tos_task_create(&application_task, "application_task", application_entry, NULL, 4, application_task_stk, APPLICATION_TASK_STK_SIZE, 0);
    tos_knl_start();

    printf("should not run at here!\r\n");

	while(1);
}
