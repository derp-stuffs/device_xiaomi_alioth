#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic
rm -rf system/extras/su
cd kernel/xiaomi/sm8250 && git submodule init && git submodule update
croot
