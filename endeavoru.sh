#! /bin/bash

PATH=~/bin:$PATH

export USE_CCACHE=1
wait
export CCACHE_DIR=~/.cache
wait
startBuildTimeM=$(date +%r)
export ARCH=arm 
export SUBARCH=arm
export CROSS_COMPILE=~/Temasek/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- 
wait
make ap33_android_defconfig
make -j16
wait
make modules
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` clean -j20
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20
wait
cp arch/arm/boot/zImage ../next_output/zImage
wait
find . -name "*.ko" -exec cp {} ../next_output \;
endBuildTimeM=$(date +%r)

echo " "
echo "Build Time: $startBuildTimeM"
echo "Finished: $endBuildTimeM"

