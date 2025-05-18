# rv1106_demo

If you just verify functions, follows the Configure step part, and don't care the part of drivers develop.

## Configure step

1.sudo apt update

2.sudo apt-get install -y git ssh make gcc gcc-multilib g++-multilib module-assistant expect g++ gawk texinfo libssl-dev bison flex fakeroot cmake unzip gperf autoconf device-tree-compiler libncurses5-dev pkg-config bc python-is-python3 passwd openssl openssh-server openssh-client vim file cpio rsync

3.git clone https://github.com/duan-jipeng/rv1106_demo.git

cd rv1106_demo

git submodule update --init

./build_lico.sh

cd sdk

./build.sh

Reference: https://wiki.luckfox.com/zh/Luckfox-Pico/Luckfox-Pico-SDK

## Drivers develop

### 1.Screen and touch
1.St7789 show error, change the HSD20_IPS value to 0 in fb_st7789v.c file; screen rotate problem is fixed by changing static int set_var(struct fbtft_par *par) function.

2.Ft6336u needs to be configed in kernelconfig(focaltect touchscreen, by seaching goodix in kernelmenuconfig), and remove focaltech_test folder.

3.Ft6336u touch rotate,  config input_report_abs of focaltech_core.c.

4.Touch rotate configs at rv1106g-lico.dts.

Reference link: https://blog.csdn.net/Shushan1/article/details/88661732

### 2.Wifi(rtl8723bs)
1.Problem mainly focused on hardware(such as short circuit, open circuit).

2.Kernel config by ./build.sh kernelconfig 8723bs.

Reference link: https://wiki.luckfox.com/zh/Luckfox-Pico/Luckfox-Pico-RV1103/Luckfox-Pico-RTL8723bs


### 3.Logo
1.Replace the file <Luckfox Pico SDK>/sysdrv/source/kernel/drivers/video/logo/logo_linux_clut224.ppm.

2.In luckfox-pico/sysdrv/source/kernel/drivers/video/fbdev/core/fbcon.c, changing define SHOW_CENTER 1 to 0.

Reference link: https://forums.luckfox.com/viewtopic.php?t=997

3.Add console=tty0 to rv1106-lico-ipc.dtsi.

Reference link: https://forums.luckfox.com/viewtopic.php?t=1165

### 4.Auto launch
1.Add & to app back, and make it run background.

2.Set proper priority for app, such as wifi, needed to launch after other drivers launched.

### 5.Audio and record
1.Audio paly: aplay *.wav.

Audio test download address: https://samplelib.com/zh/sample-wav.html

2.Record: arecord -f S16_LE -c 2 -r 16000 -D hw:0 -d 30 test.wav

Reference: https://wiki.luckfox.com/zh/Luckfox-Pico/Luckfox-Pico-Ultra-W-Audio/