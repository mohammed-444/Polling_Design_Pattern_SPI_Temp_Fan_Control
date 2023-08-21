################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Rtos_Source/portable/MemMang/heap_1.c 

OBJS += \
./Rtos_Source/portable/MemMang/heap_1.o 

C_DEPS += \
./Rtos_Source/portable/MemMang/heap_1.d 


# Each subdirectory must supply rules for building sources it contributes
Rtos_Source/portable/MemMang/%.o: ../Rtos_Source/portable/MemMang/%.c Rtos_Source/portable/MemMang/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\portable\MemMang" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\include" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\portable\GCC\ATMega323" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


