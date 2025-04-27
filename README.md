# rv1106_demo

## 1.Screen and touch
1.St7789 show error, change the HSD20_IPS value to 0 in fb_st7789v.c file; screen rotate problem is fixed by changing static int set_var(struct fbtft_par *par) function

2.Ft6336u needs to be configed in kernelconfig(focaltect touchscreen, by seaching goodix in kernelmenuconfig), and remove focaltech_test folder

3.Ft6336u touch rotate,  config input_report_abs fo focaltech_core.c (Reference link: https://blog.csdn.net/Shushan1/article/details/88661732)

## 2.Wifi(rtl8723bs)
1.Problem mainly focused on hardware(such as short circuit, open circuit)

2.Kernel config by ./build.sh kernelconfig 8723bs

3.Reference link: https://wiki.luckfox.com/zh/Luckfox-Pico/Luckfox-Pico-RV1103/Luckfox-Pico-RTL8723bsfocaltect_touch