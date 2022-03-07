obj-m = vrd_dd.o

KDIR := /home/inslab-test-server/git/rpi_kernel/linux
PWD := $(shell pwd)
 
default:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean
