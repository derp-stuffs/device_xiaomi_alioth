#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic
rm -rf vendor/derp/signing
git clone https://github.com/los-alioth/keys.git -b derp vendor/derp/signing/keys
