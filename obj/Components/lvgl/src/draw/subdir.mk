################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/src/draw/lv_draw.c \
../Components/lvgl/src/draw/lv_draw_arc.c \
../Components/lvgl/src/draw/lv_draw_img.c \
../Components/lvgl/src/draw/lv_draw_label.c \
../Components/lvgl/src/draw/lv_draw_line.c \
../Components/lvgl/src/draw/lv_draw_mask.c \
../Components/lvgl/src/draw/lv_draw_rect.c \
../Components/lvgl/src/draw/lv_draw_triangle.c \
../Components/lvgl/src/draw/lv_img_buf.c \
../Components/lvgl/src/draw/lv_img_cache.c \
../Components/lvgl/src/draw/lv_img_decoder.c 

OBJS += \
./Components/lvgl/src/draw/lv_draw.o \
./Components/lvgl/src/draw/lv_draw_arc.o \
./Components/lvgl/src/draw/lv_draw_img.o \
./Components/lvgl/src/draw/lv_draw_label.o \
./Components/lvgl/src/draw/lv_draw_line.o \
./Components/lvgl/src/draw/lv_draw_mask.o \
./Components/lvgl/src/draw/lv_draw_rect.o \
./Components/lvgl/src/draw/lv_draw_triangle.o \
./Components/lvgl/src/draw/lv_img_buf.o \
./Components/lvgl/src/draw/lv_img_cache.o \
./Components/lvgl/src/draw/lv_img_decoder.o 

C_DEPS += \
./Components/lvgl/src/draw/lv_draw.d \
./Components/lvgl/src/draw/lv_draw_arc.d \
./Components/lvgl/src/draw/lv_draw_img.d \
./Components/lvgl/src/draw/lv_draw_label.d \
./Components/lvgl/src/draw/lv_draw_line.d \
./Components/lvgl/src/draw/lv_draw_mask.d \
./Components/lvgl/src/draw/lv_draw_rect.d \
./Components/lvgl/src/draw/lv_draw_triangle.d \
./Components/lvgl/src/draw/lv_img_buf.d \
./Components/lvgl/src/draw/lv_img_cache.d \
./Components/lvgl/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/src/draw/%.o: ../Components/lvgl/src/draw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

