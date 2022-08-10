################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/src/widgets/lv_arc.c \
../Components/lvgl/src/widgets/lv_bar.c \
../Components/lvgl/src/widgets/lv_btn.c \
../Components/lvgl/src/widgets/lv_btnmatrix.c \
../Components/lvgl/src/widgets/lv_canvas.c \
../Components/lvgl/src/widgets/lv_checkbox.c \
../Components/lvgl/src/widgets/lv_dropdown.c \
../Components/lvgl/src/widgets/lv_img.c \
../Components/lvgl/src/widgets/lv_label.c \
../Components/lvgl/src/widgets/lv_line.c \
../Components/lvgl/src/widgets/lv_objx_templ.c \
../Components/lvgl/src/widgets/lv_roller.c \
../Components/lvgl/src/widgets/lv_slider.c \
../Components/lvgl/src/widgets/lv_switch.c \
../Components/lvgl/src/widgets/lv_table.c \
../Components/lvgl/src/widgets/lv_textarea.c 

OBJS += \
./Components/lvgl/src/widgets/lv_arc.o \
./Components/lvgl/src/widgets/lv_bar.o \
./Components/lvgl/src/widgets/lv_btn.o \
./Components/lvgl/src/widgets/lv_btnmatrix.o \
./Components/lvgl/src/widgets/lv_canvas.o \
./Components/lvgl/src/widgets/lv_checkbox.o \
./Components/lvgl/src/widgets/lv_dropdown.o \
./Components/lvgl/src/widgets/lv_img.o \
./Components/lvgl/src/widgets/lv_label.o \
./Components/lvgl/src/widgets/lv_line.o \
./Components/lvgl/src/widgets/lv_objx_templ.o \
./Components/lvgl/src/widgets/lv_roller.o \
./Components/lvgl/src/widgets/lv_slider.o \
./Components/lvgl/src/widgets/lv_switch.o \
./Components/lvgl/src/widgets/lv_table.o \
./Components/lvgl/src/widgets/lv_textarea.o 

C_DEPS += \
./Components/lvgl/src/widgets/lv_arc.d \
./Components/lvgl/src/widgets/lv_bar.d \
./Components/lvgl/src/widgets/lv_btn.d \
./Components/lvgl/src/widgets/lv_btnmatrix.d \
./Components/lvgl/src/widgets/lv_canvas.d \
./Components/lvgl/src/widgets/lv_checkbox.d \
./Components/lvgl/src/widgets/lv_dropdown.d \
./Components/lvgl/src/widgets/lv_img.d \
./Components/lvgl/src/widgets/lv_label.d \
./Components/lvgl/src/widgets/lv_line.d \
./Components/lvgl/src/widgets/lv_objx_templ.d \
./Components/lvgl/src/widgets/lv_roller.d \
./Components/lvgl/src/widgets/lv_slider.d \
./Components/lvgl/src/widgets/lv_switch.d \
./Components/lvgl/src/widgets/lv_table.d \
./Components/lvgl/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/src/widgets/%.o: ../Components/lvgl/src/widgets/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

