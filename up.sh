#! /bin/bash

# 备份rc.local文件
echo "backup the sys rc.local to rc.local.backup"
cp /etc/rc.local ./rc.local.backup
echo "git commit..."
git add .
git commit -m "update awesome configuration"
echo "push my awesome update to github"
git push origin master
