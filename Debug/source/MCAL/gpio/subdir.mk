################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/MCAL/gpio/gpio.c \
../source/MCAL/gpio/gpio_PBcfg.c 

OBJS += \
./source/MCAL/gpio/gpio.o \
./source/MCAL/gpio/gpio_PBcfg.o 

C_DEPS += \
./source/MCAL/gpio/gpio.d \
./source/MCAL/gpio/gpio_PBcfg.d 


# Each subdirectory must supply rules for building sources it contributes
source/MCAL/gpio/%.o: ../source/MCAL/gpio/%.c source/MCAL/gpio/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


