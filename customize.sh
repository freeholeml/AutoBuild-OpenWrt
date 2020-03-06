#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate


if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi

echo "luci-app-adguardhome"
if [ ! -d "./luci-app-adguardhome" ];then
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
else
cd luci-app-adguardhome
git pull
cd ..
fi

echo "luci-app-mentohust"
if [ ! -d "./luci-app-mentohust" ];then
git clone https://github.com/BoringCat/luci-app-mentohust.git
else
cd luci-app-mentohust
git pull
cd ..
fi

echo "luci-app-mentohust Depends"
if [ ! -d "./MentoHUST-OpenWrt-ipk" ];then
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
else
cd MentoHUST-OpenWrt-ipk
git pull
cd ..
fi
