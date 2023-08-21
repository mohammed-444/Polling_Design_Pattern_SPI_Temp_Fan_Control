################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Rtos_Source/croutine.c \
../Rtos_Source/event_groups.c \
../Rtos_Source/list.c \
../Rtos_Source/queue.c \
../Rtos_Source/tasks.c \
../Rtos_Source/timers.c 

OBJS += \
./Rtos_Source/croutine.o \
./Rtos_Source/event_groups.o \
./Rtos_Source/list.o \
./Rtos_Source/queue.o \
./Rtos_Source/tasks.o \
./Rtos_Source/timers.o 

C_DEPS += \
./Rtos_Source/croutine.d \
./Rtos_Source/event_groups.d \
./Rtos_Source/list.d \
./Rtos_Source/queue.d \
./Rtos_Source/tasks.d \
./Rtos_Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Rtos_Source/%.o: ../Rtos_Source/%.c Rtos_Source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\portable\MemMang" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\include" -I"E:\SBME4\fisrt term\Embedded\tasks\Mohammed_Alaa_project_01\mini_project3\project\Rtos_Source\portable\GCC\ATMega323" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


