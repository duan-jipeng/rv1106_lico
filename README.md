# rv1106_demo

1.st7789 show error, change the HSD20_IPS value to 0 in fb_st7789v.c file;
2.ft6336u needs to be configed in kernelconfig(focaltect touchscreen, by seaching goodix in kernelmenuconfig), and remove focaltech_test folder;
3.ft6336u touch rotate,  config input_report_abs fo focaltech_core.c(https://blog.csdn.net/Shushan1/article/details/88661732)