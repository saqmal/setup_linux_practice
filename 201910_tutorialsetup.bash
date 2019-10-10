#!/bin/bash


echo "#########################"
echo "package update & install"
echo "#########################"


apt update
apt upgrade -y
apt install -y binutils build-essential sysstat strace python3

echo "#########################"
echo setup sysstat
echo "#########################"

sed -i s/'ENABLED="false"'/'ENABLED="true"'/g /etc/default/sysstat
service sysstat start

echo "#########################"
echo change timezone to Tokyo
echo "#########################"

ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo "#########################"
echo clone cutorial
echo "#########################"

set +x 

git clone https://github.com/satoru-takeuchi/linux-in-practice/


exit 0
