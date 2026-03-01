#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX3852 device
$(call inherit-product, device/realme/RMX3852/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Disable adb secure
WITH_ADB_INSECURE := true

# Avium
AVIUM_MAINTAINER := MisterZtr
AVIUM_SETTINGS_SOC_MODEL_NAME := Snapdragon 8s Gen3
AVIUM_SETTINGS_DEVICE_CODENAME := realme GT neo6

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=realme/RMX3852/RE5C46L1:16/UKQ1.231108.001/U.2c4d212-a29694-a59564:user/release-keys \
    DeviceName=RE5C46L1 \
    DeviceProduct=RMX3852 \
    SystemDevice=RE5C46L1 \
    SystemName=RMX3852
