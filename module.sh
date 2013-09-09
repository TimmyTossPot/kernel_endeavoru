#! /bin/bash
adb root
wait
adb remount
adb push ./drivers/misc/ti-st/gps_drv.ko system/lib/modules/
wait
adb push ./drivers/misc/ti-st/st_drv.ko system/lib/modules/
wait
adb push ./drivers/scsi/scsi_wait_scan.ko system/lib/modules/
wait
adb push ./drivers/bluetooth/btwilink.ko system/lib/modules/
wait
adb push ./drivers/bluetooth/hci_uart.ko system/lib/modules/
wait
adb push ./drivers/usb/serial/baseband_usb_chr.ko system/lib/modules/
wait
adb push ./drivers/usb/class/cdc-acm.ko system/lib/modules/
wait
adb push ./drivers/staging/ti-st/fm_drv.ko system/lib/modules/
wait
adb push ./drivers/hid/hid-magicmouse.ko system/lib/modules/
wait
adb push ./drivers/net/usb/raw_ip_net.ko system/lib/modules/
wait
adb push ./drivers/net/kineto_gan.ko system/lib/modules/
wait
adb push ./net/bluetooth/bnep/bnep.ko system/lib/modules/
wait
adb push ./net/bluetooth/rfcomm/rfcomm.ko system/lib/modules/
wait
adb push ./net/bluetooth/bluetooth.ko system/lib/modules/
wait
adb push ./net/bluetooth/hidp/hidp.ko system/lib/modules/
wait
adb push ./net/wireless/lib80211.ko system/lib/modules/
wait
adb push ./arch/arm/mach-tegra/baseband-xmm-power2.ko system/lib/modules/
wait
adb push ./drivers/net/wireless/compat-wireless_R5.SP2.03/compat/compat.ko system/lib/modules/
wait
adb push ./drivers/net/wireless/compat-wireless_R5.SP2.03/net/mac80211/mac80211.ko system/lib/modules/
wait
adb push ./drivers/net/wireless/compat-wireless_R5.SP2.03/net/wireless/cfg80211.ko system/lib/modules/
wait
adb push ./drivers/net/wireless/compat-wireless_R5.SP2.03/drivers/net/wireless/wl12xx/wl12xx_sdio.ko system/lib/modules/
wait
adb push ./drivers/net/wireless/compat-wireless_R5.SP2.03/drivers/net/wireless/wl12xx/wl12xx.ko system/lib/modules/
wait
adb shell chmod 755 /system/lib/modules
wait
adb shell "chmod 644 /system/lib/modules/*"
