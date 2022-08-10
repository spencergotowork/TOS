################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/examples/assets/animimg001.c \
../Components/lvgl/examples/assets/animimg002.c \
../Components/lvgl/examples/assets/animimg003.c \
../Components/lvgl/examples/assets/img_caret_down.c \
../Components/lvgl/examples/assets/img_cogwheel_alpha16.c \
../Components/lvgl/examples/assets/img_cogwheel_argb.c \
../Components/lvgl/examples/assets/img_cogwheel_chroma_keyed.c \
../Components/lvgl/examples/assets/img_cogwheel_indexed16.c \
../Components/lvgl/examples/assets/img_cogwheel_rgb.c \
../Components/lvgl/examples/assets/img_hand.c \
../Components/lvgl/examples/assets/img_skew_strip.c \
../Components/lvgl/examples/assets/img_star.c \
../Components/lvgl/examples/assets/imgbtn_left.c \
../Components/lvgl/examples/assets/imgbtn_mid.c \
../Components/lvgl/examples/assets/imgbtn_right.c 

OBJS += \
./Components/lvgl/examples/assets/animimg001.o \
./Components/lvgl/examples/assets/animimg002.o \
./Components/lvgl/examples/assets/animimg003.o \
./Components/lvgl/examples/assets/img_caret_down.o \
./Components/lvgl/examples/assets/img_cogwheel_alpha16.o \
./Components/lvgl/examples/assets/img_cogwheel_argb.o \
./Components/lvgl/examples/assets/img_cogwheel_chroma_keyed.o \
./Components/lvgl/examples/assets/img_cogwheel_indexed16.o \
./Components/lvgl/examples/assets/img_cogwheel_rgb.o \
./Components/lvgl/examples/assets/img_hand.o \
./Components/lvgl/examples/assets/img_skew_strip.o \
./Components/lvgl/examples/assets/img_star.o \
./Components/lvgl/examples/assets/imgbtn_left.o \
./Components/lvgl/examples/assets/imgbtn_mid.o \
./Components/lvgl/examples/assets/imgbtn_right.o 

C_DEPS += \
./Components/lvgl/examples/assets/animimg001.d \
./Components/lvgl/examples/assets/animimg002.d \
./Components/lvgl/examples/assets/animimg003.d \
./Components/lvgl/examples/assets/img_caret_down.d \
./Components/lvgl/examples/assets/img_cogwheel_alpha16.d \
./Components/lvgl/examples/assets/img_cogwheel_argb.d \
./Components/lvgl/examples/assets/img_cogwheel_chroma_keyed.d \
./Components/lvgl/examples/assets/img_cogwheel_indexed16.d \
./Components/lvgl/examples/assets/img_cogwheel_rgb.d \
./Components/lvgl/examples/assets/img_hand.d \
./Components/lvgl/examples/assets/img_skew_strip.d \
./Components/lvgl/examples/assets/img_star.d \
./Components/lvgl/examples/assets/imgbtn_left.d \
./Components/lvgl/examples/assets/imgbtn_mid.d \
./Components/lvgl/examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/examples/assets/%.o: ../Components/lvgl/examples/assets/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

