ZTE Awe Kernel (-rb3)
=======================

Instructions for compiling:
----------------------------------------------
* $ cd fs/
* $ git clone git://github.com/rbheromax/exfat-nofuse exfat
* $ git clone git://github.com/rbheromax/f2fs-3.4.y f2fs
* $ cd ../
* $ make nex_defconfig
* $ make zImage

The zImage will be located in arch/arm/boot/

This can be paired with a ramdisk to make a boot.img and flashed onto device or booted through "fastboot boot boot.img" command.

Features:

* Overclocked to 1.7 GHz
* Exfat/F2FS filesystem support
* Extra CPU Govs

ToDO:

* Add block schedulers
* Crypto updates
* 3.8 kernel backports
* Improving system stability
