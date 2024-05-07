#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic
rm -rf system/extras/su
cd kernel/xiaomi/sm8250 && git submodule init && git submodule update
sudo apt-get update
sudo apt-get -y install libarchive-tools
croot
rm -rf prebuilts/clang/host/linux-x86/clang-neutron
mkdir prebuilts/clang/host/linux-x86/clang-neutron; cd prebuilts/clang/host/linux-x86/clang-neutron; 
curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman";
chmod +x antman; ./antman -S=05012024; ./antman --patch=glibc; cd ../../../../../;
sed -i '/CLANG_EXTRA_FLAGS += --hip-path=\/dev\/null/d' vendor/derp/build/tasks/kernel.mk;
croot
