################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/src/draw/sw/lv_draw_sw.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_blend.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_dither.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_polygon.c \
../Components/lvgl/src/draw/sw/lv_draw_sw_rect.c 

OBJS += \
./Components/lvgl/src/draw/sw/lv_draw_sw.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_blend.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_dither.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_polygon.o \
./Components/lvgl/src/draw/sw/lv_draw_sw_rect.o 

C_DEPS += \
./Components/lvgl/src/draw/sw/lv_draw_sw.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_blend.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_dither.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_polygon.d \
./Components/lvgl/src/draw/sw/lv_draw_sw_rect.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/src/draw/sw/%.o: ../Components/lvgl/src/draw/sw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

