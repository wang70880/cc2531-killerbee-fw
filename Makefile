CONTIKI_PROJECT = cc2531-zigbee

DEFINES+=MODELS_CONF_CC2531_USB_STICK=1 CC2530_RF_CONF_HEXDUMP=1 CC2530_RF_LOW_POWER_RX=0

PROJECT_SOURCEFILES += radio.c kb-serial.c proto.c

all: $(CONTIKI_PROJECT)

CONTIKI = ../../..
CONTIKI_WITH_RIME = 1
include $(CONTIKI)/Makefile.include
