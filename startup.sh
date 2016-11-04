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

# gnome下调用网络管理控件
nm-applet

# 开启aria2c守护进程
aria2c  -D

# 开启搜狗输入法
sogou-qimpanel

exit 0
