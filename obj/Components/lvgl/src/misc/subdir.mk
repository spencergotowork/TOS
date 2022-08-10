################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/src/misc/lv_anim.c \
../Components/lvgl/src/misc/lv_anim_timeline.c \
../Components/lvgl/src/misc/lv_area.c \
../Components/lvgl/src/misc/lv_async.c \
../Components/lvgl/src/misc/lv_bidi.c \
../Components/lvgl/src/misc/lv_color.c \
../Components/lvgl/src/misc/lv_fs.c \
../Components/lvgl/src/misc/lv_gc.c \
../Components/lvgl/src/misc/lv_ll.c \
../Components/lvgl/src/misc/lv_log.c \
../Components/lvgl/src/misc/lv_lru.c \
../Components/lvgl/src/misc/lv_math.c \
../Components/lvgl/src/misc/lv_mem.c \
../Components/lvgl/src/misc/lv_printf.c \
../Components/lvgl/src/misc/lv_style.c \
../Components/lvgl/src/misc/lv_style_gen.c \
../Components/lvgl/src/misc/lv_templ.c \
../Components/lvgl/src/misc/lv_timer.c \
../Components/lvgl/src/misc/lv_tlsf.c \
../Components/lvgl/src/misc/lv_txt.c \
../Components/lvgl/src/misc/lv_txt_ap.c \
../Components/lvgl/src/misc/lv_utils.c 

OBJS += \
./Components/lvgl/src/misc/lv_anim.o \
./Components/lvgl/src/misc/lv_anim_timeline.o \
./Components/lvgl/src/misc/lv_area.o \
./Components/lvgl/src/misc/lv_async.o \
./Components/lvgl/src/misc/lv_bidi.o \
./Components/lvgl/src/misc/lv_color.o \
./Components/lvgl/src/misc/lv_fs.o \
./Components/lvgl/src/misc/lv_gc.o \
./Components/lvgl/src/misc/lv_ll.o \
./Components/lvgl/src/misc/lv_log.o \
./Components/lvgl/src/misc/lv_lru.o \
./Components/lvgl/src/misc/lv_math.o \
./Components/lvgl/src/misc/lv_mem.o \
./Components/lvgl/src/misc/lv_printf.o \
./Components/lvgl/src/misc/lv_style.o \
./Components/lvgl/src/misc/lv_style_gen.o \
./Components/lvgl/src/misc/lv_templ.o \
./Components/lvgl/src/misc/lv_timer.o \
./Components/lvgl/src/misc/lv_tlsf.o \
./Components/lvgl/src/misc/lv_txt.o \
./Components/lvgl/src/misc/lv_txt_ap.o \
./Components/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./Components/lvgl/src/misc/lv_anim.d \
./Components/lvgl/src/misc/lv_anim_timeline.d \
./Components/lvgl/src/misc/lv_area.d \
./Components/lvgl/src/misc/lv_async.d \
./Components/lvgl/src/misc/lv_bidi.d \
./Components/lvgl/src/misc/lv_color.d \
./Components/lvgl/src/misc/lv_fs.d \
./Components/lvgl/src/misc/lv_gc.d \
./Components/lvgl/src/misc/lv_ll.d \
./Components/lvgl/src/misc/lv_log.d \
./Components/lvgl/src/misc/lv_lru.d \
./Components/lvgl/src/misc/lv_math.d \
./Components/lvgl/src/misc/lv_mem.d \
./Components/lvgl/src/misc/lv_printf.d \
./Components/lvgl/src/misc/lv_style.d \
./Components/lvgl/src/misc/lv_style_gen.d \
./Components/lvgl/src/misc/lv_templ.d \
./Components/lvgl/src/misc/lv_timer.d \
./Components/lvgl/src/misc/lv_tlsf.d \
./Components/lvgl/src/misc/lv_txt.d \
./Components/lvgl/src/misc/lv_txt_ap.d \
./Components/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/src/misc/%.o: ../Components/lvgl/src/misc/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

