# 1.system
cp -rf ./lico_project_file/build.sh  ./sdk/project
cp -rf ./lico_project_file/BoardConfig-SPI_NAND-Buildroot-RV1106_Lico.mk ./sdk/project/cfg/BoardConfig_IPC
cp -rf ./lico_project_file/rv1106g-lico.dts ./sdk/sysdrv/source/kernel/arch/arm/boot/dts
cp -rf ./lico_project_file/rv1106-lico-ipc.dtsi ./sdk/sysdrv/source/kernel/arch/arm/boot/dts
cp -rf ./lico_project_file/lico_rv1106_uboot_defconfig ./sdk/sysdrv/source/uboot/u-boot/configs
cp -rf ./lico_project_file/lico_rv1106_linux_defconfig ./sdk/sysdrv/source/kernel/arch/arm/configs
cp -rf ./lico_project_file/lico_defconfig ./sdk/sysdrv/tools/board/buildroot
cp -rf ./lico_project_file/make_fit_uboot.sh ./sdk/sysdrv/source/uboot/u-boot/arch/arm/mach-rockchip
cp -rf ./lico_project_file/Makefile_sysdrv ./sdk/sysdrv/Makefile


# 2.screen and touch
cp -rf ./lico_project_file/fb_st7789v.c ./sdk/sysdrv/source/kernel/drivers/staging/fbtft

# ./build.sh kernelconfig focaltect y
rm -rf ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch/focaltech_test
cp -rf ./lico_project_file/Makefile_focaltech ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch/Makefile

cp -rf ./lico_project_file/focaltech_core.c ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch
cp -rf ./lico_project_file/focaltech_core.h ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch


# 3.wifi(8723bs)
mkdir -p ./sdk/external/lib/firmware/rtlwifi
cp -rf ./lico_project_file/rtl8723bs_nic.bin ./sdk/external/lib/firmware/rtlwifi


echo "build lico finished!"
