$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/tecno/Camon_C7/aosp_Camon_C7.mk)

# Release name
PRODUCT_RELEASE_NAME := Camon_C7

PRODUCT_BRAND := TECNO
PRODUCT_DEVICE := Camon_C7
PRODUCT_MANUFACTURER := TECNO
PRODUCT_MODEL := TECNO-C7
PRODUCT_NAME := aosp_Camon_C7
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Camon_C7" \
    PRODUCT_NAME="TECNO-C7" \
    BUILD_FINGERPRINT="TECNO/TECNO-C7/TECNO-C7:6.0/MRA58K/C7-H355A1-M-160922V69:user/release-keys" \
    PRIVATE_BUILD_DESC="TECNO-C7-user 6.0 MRA58K 1461742312 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

# Boot animation
TARGET_SCREEN_HEIGHT      := 1280
TARGET_SCREEN_WIDTH       := 720
TARGET_BOOTANIMATION_NAME := 720
