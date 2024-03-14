################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/AnalogIn.c \
../Core/Src/AnalogOut.c \
../Core/Src/RCfilter.c \
../Core/Src/Serial.c \
../Core/Src/Shell.c \
../Core/Src/Timebase.c \
../Core/Src/adc.c \
../Core/Src/gpio.c \
../Core/Src/led.c \
../Core/Src/main.c \
../Core/Src/spi.c \
../Core/Src/stm32l0xx_hal_msp.c \
../Core/Src/stm32l0xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l0xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c 

OBJS += \
./Core/Src/AnalogIn.o \
./Core/Src/AnalogOut.o \
./Core/Src/RCfilter.o \
./Core/Src/Serial.o \
./Core/Src/Shell.o \
./Core/Src/Timebase.o \
./Core/Src/adc.o \
./Core/Src/gpio.o \
./Core/Src/led.o \
./Core/Src/main.o \
./Core/Src/spi.o \
./Core/Src/stm32l0xx_hal_msp.o \
./Core/Src/stm32l0xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l0xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o 

C_DEPS += \
./Core/Src/AnalogIn.d \
./Core/Src/AnalogOut.d \
./Core/Src/RCfilter.d \
./Core/Src/Serial.d \
./Core/Src/Shell.d \
./Core/Src/Timebase.d \
./Core/Src/adc.d \
./Core/Src/gpio.d \
./Core/Src/led.d \
./Core/Src/main.d \
./Core/Src/spi.d \
./Core/Src/stm32l0xx_hal_msp.d \
./Core/Src/stm32l0xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l0xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DSTM32L021xx -DUSE_HAL_DRIVER -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/AnalogIn.cyclo ./Core/Src/AnalogIn.d ./Core/Src/AnalogIn.o ./Core/Src/AnalogIn.su ./Core/Src/AnalogOut.cyclo ./Core/Src/AnalogOut.d ./Core/Src/AnalogOut.o ./Core/Src/AnalogOut.su ./Core/Src/RCfilter.cyclo ./Core/Src/RCfilter.d ./Core/Src/RCfilter.o ./Core/Src/RCfilter.su ./Core/Src/Serial.cyclo ./Core/Src/Serial.d ./Core/Src/Serial.o ./Core/Src/Serial.su ./Core/Src/Shell.cyclo ./Core/Src/Shell.d ./Core/Src/Shell.o ./Core/Src/Shell.su ./Core/Src/Timebase.cyclo ./Core/Src/Timebase.d ./Core/Src/Timebase.o ./Core/Src/Timebase.su ./Core/Src/adc.cyclo ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/adc.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/led.cyclo ./Core/Src/led.d ./Core/Src/led.o ./Core/Src/led.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/spi.cyclo ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spi.su ./Core/Src/stm32l0xx_hal_msp.cyclo ./Core/Src/stm32l0xx_hal_msp.d ./Core/Src/stm32l0xx_hal_msp.o ./Core/Src/stm32l0xx_hal_msp.su ./Core/Src/stm32l0xx_it.cyclo ./Core/Src/stm32l0xx_it.d ./Core/Src/stm32l0xx_it.o ./Core/Src/stm32l0xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l0xx.cyclo ./Core/Src/system_stm32l0xx.d ./Core/Src/system_stm32l0xx.o ./Core/Src/system_stm32l0xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

