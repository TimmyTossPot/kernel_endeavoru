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
echo \#define LINUX_COMPILE_BY \"`echo audahadi`\"
wait
make custom_sense_defconfig
make -j7
wait
make modules
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` clean -j20
make -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20
wait
cp arch/arm/boot/zImage ../next_sense/zImage
wait
find . -name "*.ko" -exec cp {} ../next_sense/modules \;
wait
cp -f drivers/net/wireless/compat-wireless_R5.SP2.03/net/wireless/cfg80211.ko ../next_sense/modules

endBuildTimeM=$(date +%r)

echo " "
echo "Build Time: $startBuildTimeM"
echo "Finished: $endBuildTimeM"
