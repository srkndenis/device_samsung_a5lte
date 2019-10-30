# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/samsung/a5lte/full_a5lte.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit System Prop for a5lte 
$(call inherit-product, device/samsung/a5lte/system_prop.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := lineage_a5lte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := a5lte

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR_PRODUCT_NAME := a5lte
TARGET_VENDOR_DEVICE_NAME := a5ltexx
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a5lte PRODUCT_NAME=a5ltexx

# Assert
TARGET_OTA_ASSERT_DEVICE := a5ulte,a5ultexx,a5lte,a5ltexx,a53gxx,a53g,a5ltedd,a5ultektt,a5ultelgt,a5lteub,a5ultekx,a5ulteskt,a5ultebmc,a5ultedv,a5ltezt

# Fingerprint
BUILD_FINGERPRINT := samsung/a5ltexx/a5lte:6.0.1/MMB29M/A500FXXU1CPH2:user/release-keys
