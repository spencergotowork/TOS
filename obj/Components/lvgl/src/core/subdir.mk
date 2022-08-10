################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/src/core/lv_disp.c \
../Components/lvgl/src/core/lv_event.c \
../Components/lvgl/src/core/lv_group.c \
../Components/lvgl/src/core/lv_indev.c \
../Components/lvgl/src/core/lv_indev_scroll.c \
../Components/lvgl/src/core/lv_obj.c \
../Components/lvgl/src/core/lv_obj_class.c \
../Components/lvgl/src/core/lv_obj_draw.c \
../Components/lvgl/src/core/lv_obj_pos.c \
../Components/lvgl/src/core/lv_obj_scroll.c \
../Components/lvgl/src/core/lv_obj_style.c \
../Components/lvgl/src/core/lv_obj_style_gen.c \
../Components/lvgl/src/core/lv_obj_tree.c \
../Components/lvgl/src/core/lv_refr.c \
../Components/lvgl/src/core/lv_theme.c 

OBJS += \
./Components/lvgl/src/core/lv_disp.o \
./Components/lvgl/src/core/lv_event.o \
./Components/lvgl/src/core/lv_group.o \
./Components/lvgl/src/core/lv_indev.o \
./Components/lvgl/src/core/lv_indev_scroll.o \
./Components/lvgl/src/core/lv_obj.o \
./Components/lvgl/src/core/lv_obj_class.o \
./Components/lvgl/src/core/lv_obj_draw.o \
./Components/lvgl/src/core/lv_obj_pos.o \
./Components/lvgl/src/core/lv_obj_scroll.o \
./Components/lvgl/src/core/lv_obj_style.o \
./Components/lvgl/src/core/lv_obj_style_gen.o \
./Components/lvgl/src/core/lv_obj_tree.o \
./Components/lvgl/src/core/lv_refr.o \
./Components/lvgl/src/core/lv_theme.o 

C_DEPS += \
./Components/lvgl/src/core/lv_disp.d \
./Components/lvgl/src/core/lv_event.d \
./Components/lvgl/src/core/lv_group.d \
./Components/lvgl/src/core/lv_indev.d \
./Components/lvgl/src/core/lv_indev_scroll.d \
./Components/lvgl/src/core/lv_obj.d \
./Components/lvgl/src/core/lv_obj_class.d \
./Components/lvgl/src/core/lv_obj_draw.d \
./Components/lvgl/src/core/lv_obj_pos.d \
./Components/lvgl/src/core/lv_obj_scroll.d \
./Components/lvgl/src/core/lv_obj_style.d \
./Components/lvgl/src/core/lv_obj_style_gen.d \
./Components/lvgl/src/core/lv_obj_tree.d \
./Components/lvgl/src/core/lv_refr.d \
./Components/lvgl/src/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/src/core/%.o: ../Components/lvgl/src/core/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

