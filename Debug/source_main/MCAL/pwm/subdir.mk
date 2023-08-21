################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/MCAL/pwm/pwm.c 

OBJS += \
./source_main/MCAL/pwm/pwm.o 

C_DEPS += \
./source_main/MCAL/pwm/pwm.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/MCAL/pwm/%.o: ../source_main/MCAL/pwm/%.c source_main/MCAL/pwm/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


