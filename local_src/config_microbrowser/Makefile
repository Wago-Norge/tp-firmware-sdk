#
# Simple development makefile
#

ifndef PTXDIST_SYSROOT_TARGET
#$(error Environment variable PTXDIST_SYSROOT_TARGET not set properly!)
endif

GLIB_CFLAGS  = -I$(PTXDIST_SYSROOT_TARGET)/usr/include/glib-2.0
GLIB_CFLAGS += -I$(PTXDIST_SYSROOT_TARGET)/usr/lib/glib-2.0/include
GLIB_LDFLAGS = -lglib-2.0
override LDFLAGS += -L$(PTXDIST_SYSROOT_TARGET)/lib -ludev -lmsgtool -lctcommon $(GLIB_LDFLAGS)
override CFLAGS += $(GLIB_CFLAGS)
override CFLAGS+=-O0 -ggdb3


all: config_microbrowser

config_microbrowser: config_microbrowser.o
	$(CC) $(LDFLAGS) -o $@ config_microbrowser.o $(LDLIBS$(LDLIBS-$(@)))


clean:
	rm -f config_microbrowser *.gdb *.o

install:


.PHONY: all install clean

# end of development makefile
