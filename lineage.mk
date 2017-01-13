#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from gohan device
$(call inherit-product, device/bq/gohan/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_BRAND := bq
PRODUCT_DEVICE := gohan
PRODUCT_NAME := lineage_gohan
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris X5 Plus
TARGET_VENDOR := bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_X5_Plus PRODUCT_NAME=Aquaris_X5_Plus

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_X5_Plus/Aquaris_X5_Plus:6.0.1/MMB29M/1479392031:user/release-keys \
    PRIVATE_BUILD_DESC="gohan-user 6.0.1 MMB29M 1.5.0_20161117-1513 release-keys"
endif
