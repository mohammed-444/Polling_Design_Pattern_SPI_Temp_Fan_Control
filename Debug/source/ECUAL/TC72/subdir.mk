################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/ECUAL/TC72/TC72.c 

OBJS += \
./source/ECUAL/TC72/TC72.o 

C_DEPS += \
./source/ECUAL/TC72/TC72.d 


# Each subdirectory must supply rules for building sources it contributes
source/ECUAL/TC72/%.o: ../source/ECUAL/TC72/%.c source/ECUAL/TC72/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


