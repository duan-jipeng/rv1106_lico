# rv1106_demo

## 1.Screen and touch
1.St7789 show error, change the HSD20_IPS value to 0 in fb_st7789v.c file; screen rotate problem is fixed by changing static int set_var(struct fbtft_par *par) function

2.Ft6336u needs to be configed in kernelconfig(focaltect touchscreen, by seaching goodix in kernelmenuconfig), and remove focaltech_test folder

3.Ft6336u touch rotate,  config input_report_abs fo focaltech_core.c

Reference link: https://blog.csdn.net/Shushan1/article/details/88661732

## 2.Wifi(rtl8723bs)
1.Problem mainly focused on hardware(such as short circuit, open circuit)

2.Kernel config by ./build.sh kernelconfig 8723bs

Reference link: https://wiki.luckfox.com/zh/Luckfox-Pico/Luckfox-Pico-RV1103/Luckfox-Pico-RTL8723bsfocaltect_touch

## 3.Logo
1.Replace the file <Luckfox Pico SDK>/sysdrv/source/kernel/drivers/video/logo/logo_linux_clut224.ppm

2.In luckfox-pico/sysdrv/source/kernel/drivers/video/fbdev/core/fbcon.c, changing define SHOW_CENTER 1 to 0

Reference link: https://forums.luckfox.com/viewtopic.php?t=997

3.Add console=tty0 to rv1106-lico-ipc.dtsi

Reference link: https://forums.luckfox.com/viewtopic.php?t=1165


