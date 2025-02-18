#
# Copyright (C) 2016 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := M95
PRODUCT_NAME := omni_M95
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := Meizu MX6
PRODUCT_MANUFACTURER := Meizu
PRODUCT_RELEASE_NAME := Meizu MX6

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="MX6" \
    BUILD_PRODUCT="m95" \
    PRIVATE_BUILD_DESC="MX6-eng 6.0 MRA58K 1468846761 test-keys"
	
BUILD_FINGERPRINT := "Meizu/MX6/MX6:6.0/MRA58K/1468846761:eng/test-keys"

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
