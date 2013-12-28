#! /bin/bash

PATH=~/bin:$PATH

export USE_CCACHE=1
wait
export CCACHE_DIR=~/.cache
wait
startBuildTimeM=$(date +%r)
export ARCH=arm 
export SUBARCH=arm
export CROSS_COMPILE=~/toolchain/arm-eabi-4.7/bin/arm-eabi- 
wait
make cyanogenmod_endeavoru_defconfig
make -j7
wait
make modules
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` clean -j20
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20
wait
cp arch/arm/boot/zImage ../next_aosp/zImage
wait
find . -name "*.ko" -exec cp {} ../next_aosp \;
endBuildTimeM=$(date +%r)

echo " "
echo "Build Time: $startBuildTimeM"
echo "Finished: $endBuildTimeM"

