ZTE Awe Kernel (-rb3)
=======================

Instructions for compiling:
----------------------------------------------
* $ ./fs.sh
* $ make nex-rb3_defconfig
* $ make zImage

The zImage will be located in arch/arm/boot/

This can be paired with a ramdisk to make a boot.img and flashed onto device or booted through "fastboot boot boot.img" command.

Features:

* Overclocked to 1.7 GHz
* Possible 2 GHz Clock speed (unstable)
* GPU OC to 450 MHz
* Exfat/F2FS filesystem support (no fuse)
* Extra CPU Govs
* Extra Block schedulers

ToDO:

* ~~Add block schedulers~~
* Crypto updates
* 3.8 kernel backports
* Improving system stability
