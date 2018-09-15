#!/bin/sh
rm -rf out
mkdir out/
mkdir out/boot/
mkdir out/rootfs/

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs -j2
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=out/rootfs modules_install -j2
mv arch/arm/boot/zImage out/boot/
mv arch/arm/boot/dts/retro-v3s.dtb out/boot/
