#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Downloading trees for branches belonging to ${normal}$1"

echo "${bold}Downloading Perseus Device Tree${normal}"
git clone https://github.com/MrAidanlw97/android_device_xiaomi_perseus -b $1 device/xiaomi/perseus > /dev/null

echo "${bold}Downloading SDM845 SOC Tree${normal}"
git clone https://github.com/MrAidanlw97/android_device_xiaomi_sdm845-common -b $1 device/xiaomi/sdm845-common > /dev/null

echo "${bold}Downloading SDM845 Kernel Tree${normal}"
git clone https://github.com/MrAidanlw97/android_kernel_xiaomi_sdm845 -b $1 kernel/xiaomi/sdm845 > /dev/null

echo "${bold}Downloading Xiaomi Vendor Tree${normal}"
git clone https://github.com/MrAidanlw97/proprietary_vendor_xiaomi -b $1 vendor/xiaomi > /dev/null

echo "${bold}Downloading Xiaomi Hardware Tree${normal}"
git clone https://github.com/MrAidanlw97/android_hardware_xiaomi hardware/xiaomi > /dev/null
