#!/bin/sh

echo 正在关闭并结束nginx后台进程. . .

systemctl stop nginx

systemctl disable nginx

echo 正在卸载nginx. . .

rm -rf /etc/nginx

rm -rf /usr/share/nginx

rm -rf /var/www/html

apt-get --purge remove nginx -y

apt-get autoremove -y

dpkg --get-selections | grep nginx

apt-get --purge remove nginx -y

apt-get --purge remove nginx-common -y

apt-get --purge remove nginx-core -y

dpkg --get-selections | grep nginx

echo -----nginx进程检测-----

which nginx
echo
echo -----------------------

exit 0
