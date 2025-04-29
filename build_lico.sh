# 1.system
cp -rfvd ./lico_project_file/build.sh  ./sdk/project
cp -rfvd ./lico_project_file/BoardConfig-SPI_NAND-Buildroot-RV1106_Lico.mk ./sdk/project/cfg/BoardConfig_IPC
cp -rfvd ./lico_project_file/rv1106g-lico.dts ./sdk/sysdrv/source/kernel/arch/arm/boot/dts
cp -rfvd ./lico_project_file/rv1106-lico-ipc.dtsi ./sdk/sysdrv/source/kernel/arch/arm/boot/dts
cp -rfvd ./lico_project_file/lico_rv1106_uboot_defconfig ./sdk/sysdrv/source/uboot/u-boot/configs
cp -rfvd ./lico_project_file/lico_rv1106_linux_defconfig ./sdk/sysdrv/source/kernel/arch/arm/configs
cp -rfvd ./lico_project_file/lico_defconfig ./sdk/sysdrv/tools/board/buildroot
cp -rfvd ./lico_project_file/make_fit_uboot.sh ./sdk/sysdrv/source/uboot/u-boot/arch/arm/mach-rockchip
cp -rfvd ./lico_project_file/Makefile_sysdrv ./sdk/sysdrv/Makefile


# 2.screen and touch
cp -rfvd ./lico_project_file/fb_st7789v.c ./sdk/sysdrv/source/kernel/drivers/staging/fbtft

# ./build.sh kernelconfig focaltect y
rm -rfvd ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch/focaltech_test
cp -rfvd ./lico_project_file/Makefile_focaltech ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch/Makefile

cp -rfvd ./lico_project_file/focaltech_core.c ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch
cp -rfvd ./lico_project_file/focaltech_core.h ./sdk/sysdrv/source/kernel/drivers/input/touchscreen/focaltech_touch


# 3.wifi(8723bs)
mkdir -p ./sdk/external/lib/firmware/rtlwifi
cp -rfvd ./lico_project_file/rtl8723bs_nic.bin ./sdk/external/lib/firmware/rtlwifi
