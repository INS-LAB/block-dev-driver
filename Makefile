obj-m = vrd_dd.o

KDIR := # Please, insert the Rpi kernel directory path
PWD := $(shell pwd)
 
default:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean
