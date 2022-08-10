################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/lvgl/examples/styles/lv_example_style_1.c \
../Components/lvgl/examples/styles/lv_example_style_10.c \
../Components/lvgl/examples/styles/lv_example_style_11.c \
../Components/lvgl/examples/styles/lv_example_style_12.c \
../Components/lvgl/examples/styles/lv_example_style_13.c \
../Components/lvgl/examples/styles/lv_example_style_14.c \
../Components/lvgl/examples/styles/lv_example_style_2.c \
../Components/lvgl/examples/styles/lv_example_style_3.c \
../Components/lvgl/examples/styles/lv_example_style_4.c \
../Components/lvgl/examples/styles/lv_example_style_5.c \
../Components/lvgl/examples/styles/lv_example_style_6.c \
../Components/lvgl/examples/styles/lv_example_style_7.c \
../Components/lvgl/examples/styles/lv_example_style_8.c \
../Components/lvgl/examples/styles/lv_example_style_9.c 

OBJS += \
./Components/lvgl/examples/styles/lv_example_style_1.o \
./Components/lvgl/examples/styles/lv_example_style_10.o \
./Components/lvgl/examples/styles/lv_example_style_11.o \
./Components/lvgl/examples/styles/lv_example_style_12.o \
./Components/lvgl/examples/styles/lv_example_style_13.o \
./Components/lvgl/examples/styles/lv_example_style_14.o \
./Components/lvgl/examples/styles/lv_example_style_2.o \
./Components/lvgl/examples/styles/lv_example_style_3.o \
./Components/lvgl/examples/styles/lv_example_style_4.o \
./Components/lvgl/examples/styles/lv_example_style_5.o \
./Components/lvgl/examples/styles/lv_example_style_6.o \
./Components/lvgl/examples/styles/lv_example_style_7.o \
./Components/lvgl/examples/styles/lv_example_style_8.o \
./Components/lvgl/examples/styles/lv_example_style_9.o 

C_DEPS += \
./Components/lvgl/examples/styles/lv_example_style_1.d \
./Components/lvgl/examples/styles/lv_example_style_10.d \
./Components/lvgl/examples/styles/lv_example_style_11.d \
./Components/lvgl/examples/styles/lv_example_style_12.d \
./Components/lvgl/examples/styles/lv_example_style_13.d \
./Components/lvgl/examples/styles/lv_example_style_14.d \
./Components/lvgl/examples/styles/lv_example_style_2.d \
./Components/lvgl/examples/styles/lv_example_style_3.d \
./Components/lvgl/examples/styles/lv_example_style_4.d \
./Components/lvgl/examples/styles/lv_example_style_5.d \
./Components/lvgl/examples/styles/lv_example_style_6.d \
./Components/lvgl/examples/styles/lv_example_style_7.d \
./Components/lvgl/examples/styles/lv_example_style_8.d \
./Components/lvgl/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
Components/lvgl/examples/styles/%.o: ../Components/lvgl/examples/styles/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\CLOCK\Debug" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\config" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\common" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\include\services\explorer" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\cryptology\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\mqtt_packet\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\common\utils\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\platform\network\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\data_template\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\explorer\service_mqtt\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\log_upload\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\connectivity\iot-hub-device-c-sdk\services\common\mqtt_client\inc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\sal_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\kv\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\fatfs\wrapper\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\components\fs\vfs\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\hal\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\at\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\net\tencent_firmware_module_wrapper" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\devices\esp8266_tencent_firmware" -I"C:\MRS_DATA\workspace\CLOCK\TOS_CONFIG" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\common\include" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\arch\risc-v\risc-v3a\rv32i\gcc" -I"C:\Users\PC\Desktop\Arch\Tool\TencentOS-tiny-master\kernel\core\include" -I"C:\MRS_DATA\workspace\CLOCK\Core" -I"C:\MRS_DATA\workspace\CLOCK\User" -I"C:\MRS_DATA\workspace\CLOCK\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

