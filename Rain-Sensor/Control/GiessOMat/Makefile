###############################################################################
# Makefile for the project giessomat
###############################################################################

## General Flags
PROJECT = giessomat
MCU = atmega8
TARGET = giessomat.elf
CC = avr-gcc

AVRDUDE_ARGS=-p m8 -c avrispmkII -P usb

## Options common to compile, link and assembly rules
COMMON = -mmcu=$(MCU)

## Compile options common for all C compilation units.
CFLAGS = $(COMMON)
CFLAGS += -Wall -O2 -fsigned-char
# -gdwarf-2
CFLAGS += -Wp,-M,-MP,-MT,$(*F).o,-MF,dep/$(@F).d 

## Assembly specific flags
ASMFLAGS = $(COMMON)
ASMFLAGS += -x assembler-with-cpp -Wa,-gdwarf2

## Linker flags
LDFLAGS = $(COMMON)
LDFLAGS += 


## Intel Hex file production flags
HEX_FLASH_FLAGS = -R .eeprom

HEX_EEPROM_FLAGS = -j .eeprom
HEX_EEPROM_FLAGS += --set-section-flags=.eeprom="alloc,load"
HEX_EEPROM_FLAGS += --change-section-lma .eeprom=0


## Objects that must be built in order to link
OBJECTS = giessomat.o uart.o clock.o 

## Build
all: $(TARGET) giessomat.hex
	avr-size giessomat.elf

## Compile
giessomat.o: giessomat.c main.h
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<

uart.o: uart.c uart.h
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<
	
clock.o: clock.c clock.h
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<
		
##Link
$(TARGET): $(OBJECTS)
	 $(CC) $(LDFLAGS) $(OBJECTS) $(LIBDIRS) $(LIBS) -o $(TARGET)

%.hex: $(TARGET)
	avr-objcopy -O ihex $(HEX_FLASH_FLAGS)  $< $@

%.eep: $(TARGET)
	avr-objcopy $(HEX_EEPROM_FLAGS) -O ihex $< $@

%.lss: $(TARGET)
	avr-objdump -h -S $< > $@

#size: ${TARGET}
#	@echo
#	@sh avr-mem.sh ${TARGET} ${MCU}

## Clean target
.PHONY: clean
clean:
	rm -rf $(OBJECTS) giessomat.elf dep/ giessomat.hex giessomat.eep

## Other dependencies
-include $(shell mkdir dep 2>/dev/null) $(wildcard dep/*)

#Programmer
download: giessomat.hex
	#avrdude -p m8 -c pony-stk200 -U flash:w:giessomat.hex:i
	avrdude $(AVRDUDE_ARGS) -U eeprom:r:giessomat.eep:i
	avrdude $(AVRDUDE_ARGS) -U flash:w:giessomat.hex:i
	avrdude $(AVRDUDE_ARGS) -D -U eeprom:w:giessomat.eep:i
	
upload:
	#avrdude -p m8 -c pony-stk200 -U flash:r:backup.hex:i
	avrdude $(AVRDUDE_ARGS) -U flash:r:backup.hex:i

#Install the avr toolchain in Debian or Ubuntu
toolchain-debian:
	sudo apt-get install gcc-avr binutils-avr avr-libc

fuses:
	avrdude $(AVRDUDE_ARGS) -U lfuse:w:0xEF:m
	avrdude $(AVRDUDE_ARGS) -U hfuse:w:0xD9:m
	avrdude $(AVRDUDE_ARGS) -U efuse:w:0xFF:m
