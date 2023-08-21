################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/MCAL/gpio/gpio.c \
../source_main/MCAL/gpio/gpio_PBcfg.c 

OBJS += \
./source_main/MCAL/gpio/gpio.o \
./source_main/MCAL/gpio/gpio_PBcfg.o 

C_DEPS += \
./source_main/MCAL/gpio/gpio.d \
./source_main/MCAL/gpio/gpio_PBcfg.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/MCAL/gpio/%.o: ../source_main/MCAL/gpio/%.c source_main/MCAL/gpio/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


