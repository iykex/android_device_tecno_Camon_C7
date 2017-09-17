#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_Camon_C7.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier
PRODUCT_BRAND := TECNO
PRODUCT_DEVICE := Camon_C7
PRODUCT_MANUFACTURER := TECNO
PRODUCT_MODEL := TECNO-C7
PRODUCT_NAME := lineage_Camon_C7
PRODUCT_RELEASE_NAME := Camon_C7
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Camon_C7" \
    PRODUCT_NAME="TECNO-C7" \
    BUILD_FINGERPRINT="TECNO/TECNO-C7/TECNO-C7:6.0/MRA58K/C7-H355A1-M-160922V69:user/release-keys" \
    PRIVATE_BUILD_DESC="TECNO-C7-user 6.0 MRA58K 1461742312 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-tecno

