################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/ECUAL/lcd/lcd.c 

OBJS += \
./source/ECUAL/lcd/lcd.o 

C_DEPS += \
./source/ECUAL/lcd/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
source/ECUAL/lcd/%.o: ../source/ECUAL/lcd/%.c source/ECUAL/lcd/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


