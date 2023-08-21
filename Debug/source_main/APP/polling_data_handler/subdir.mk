################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/APP/polling_data_handler/PollDataClient.c 

OBJS += \
./source_main/APP/polling_data_handler/PollDataClient.o 

C_DEPS += \
./source_main/APP/polling_data_handler/PollDataClient.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/APP/polling_data_handler/%.o: ../source_main/APP/polling_data_handler/%.c source_main/APP/polling_data_handler/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


