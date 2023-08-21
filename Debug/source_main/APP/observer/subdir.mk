################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source_main/APP/observer/client1.c \
../source_main/APP/observer/client2.c \
../source_main/APP/observer/server.c 

OBJS += \
./source_main/APP/observer/client1.o \
./source_main/APP/observer/client2.o \
./source_main/APP/observer/server.o 

C_DEPS += \
./source_main/APP/observer/client1.d \
./source_main/APP/observer/client2.d \
./source_main/APP/observer/server.d 


# Each subdirectory must supply rules for building sources it contributes
source_main/APP/observer/%.o: ../source_main/APP/observer/%.c source_main/APP/observer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project2\Rtos_Source\portable\MemMang" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project2\Rtos_Source\include" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project2\Rtos_Source\portable\GCC\ATMega323" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


