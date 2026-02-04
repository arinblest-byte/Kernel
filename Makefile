obj-m += breeze_memk.o
breeze_memk-y := entry.o memory.o process.o

# Agar KDIR define nahi hai, toh default path (Sirf local testing ke liye)
KDIR ?= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
