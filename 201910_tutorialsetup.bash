#!/bin/bash


echo "#########################"
echo package update & install
echo "#########################"

set +x 

apt upgrade
apt install -y binutils build-essential sysstat strace 

set -x

echo "#########################"
echo setup sysstat
echo "#########################"

set +x 

sed -i s/'ENABLED="false"'/'ENABLED="true"'/g /etc/default/sysstat
service sysstat start

set -x

echo "#########################"
echo clone cutorial
echo "#########################"

set +x 

git clone https://github.com/satoru-takeuchi/linux-in-practice/


exit 0
