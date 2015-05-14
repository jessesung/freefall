TARGET	= freefall

CFLAGS	= -Wall -O2

all:	$(TARGET)

clean:
	-rm -f $(TARGET)

distclean:	clean

install:	$(TARGET)
	install -D $(TARGET) $(DESTDIR)/usr/sbin/$(TARGET)

.PHONY:	all clean distclean install

$(TARGET):	$(TARGET).c

