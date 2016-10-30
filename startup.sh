#!/bin/bash
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.


# github的访问不经过VPN，直接走网卡
sudo ip route add 192.30.252.0/22 via 192.168.18.1 dev eno1
# 腾讯云服务器ssh过滤
sudo ip route add 123.206.229.202 via 192.168.18.1 dev eno1

# 键盘caps lock和右侧ctrl进行交换
# xmodmap /home/demon/.xmodmap 2>/dev/null

# 挂在硬盘的独立分区
sudo mount /dev/sda5 /home/demon/Space/
# 挂载硬盘到当前用户目录下的Download目录中
sudo mount /dev/sda6 ~/Extern/
# gnome下调用网络管理控件
nm-applet

# 开启aria2c守护进程
aria2c --conf-path=/home/demon/.aria2/aria2.conf -D

# 开启fcitx守护进程
fcitx -d

exit 0
