#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from gohan device
$(call inherit-product, device/bq/gohan/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := BQ
PRODUCT_BRAND := BQ
PRODUCT_DEVICE := gohan
PRODUCT_NAME := cm_gohan
PRODUCT_MANUFACTURER := BQ
PRODUCT_MODEL := Aquaris X5 Plus
TARGET_VENDOR := BQ

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_X5_Plus/Aquaris_X5_Plus:6.0.1/MMB29M/1469675548:user/release-keys \
    PRIVATE_BUILD_DESC="gohan-user 6.0.1 MMB29M 1.2.0_20160728-0512 release-keys"
endif
