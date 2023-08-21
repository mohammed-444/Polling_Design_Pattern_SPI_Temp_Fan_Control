################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/ECUAL/button/button.c 

OBJS += \
./source_main/ECUAL/button/button.o 

C_DEPS += \
./source_main/ECUAL/button/button.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/ECUAL/button/%.o: ../source_main/ECUAL/button/%.c source_main/ECUAL/button/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


