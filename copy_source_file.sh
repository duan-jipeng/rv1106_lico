cp -rf /home/peng/rv1106/luckfox-pico/project/build.sh ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/project/cfg/BoardConfig_IPC/BoardConfig-SPI_NAND-Buildroot-RV1106_Lico.mk ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/source/kernel/arch/arm/boot/dts/rv1106g-lico.dts ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/source/kernel/arch/arm/boot/dts/rv1106-lico-ipc.dtsi ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/source/uboot/u-boot/configs/lico_rv1106_uboot_defconfig ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/source/kernel/arch/arm/configs/lico_rv1106_linux_defconfig ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/tools/board/buildroot/lico_defconfig ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/source/uboot/u-boot/arch/arm/mach-rockchip/make_fit_uboot.sh ./lico_project_file
cp -rf /home/peng/rv1106/luckfox-pico/sysdrv/Makefile ./lico_project_file

echo "copy files finished!"
