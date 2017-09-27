LOCAL_PATH := device/tecno/Camon_C7

##
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

## The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/tecno/Camon_C7/Camon_C7-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay # enable this to be able overlay a default wallpaper

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
    libxlog

# Lights
#PRODUCT_PACKAGES += \
#    lights.mt6735

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg

# Prebuilt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/bin/em_svr:system/bin/em_svr \
    #$(LOCAL_PATH)/proprietary/lib/libfprint-x32.so:system/lib/libfprint-x32.so \
    $(LOCAL_PATH)/proprietary/lib/sensors.mt6735.so:system/lib/hw/sensors.mt6735.so \
    $(LOCAL_PATH)/proprietary/lib/libMtkOmxVenc.so:system/lib/libMtkOmxVenc.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libvc1dec_sa.ca7.so:system/vendor/lib/libvc1dec_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/lib/libvcodec_oal.so:system/lib/libvcodec_oal.so \
    $(LOCAL_PATH)/proprietary/lib/libvcodec_utility.so:system/lib/libvcodec_utility.so \
    $(LOCAL_PATH)/proprietary/lib/libvcodecdrv.so:system/lib/libvcodecdrv.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libuvtswenc_sa.ca7.android.so:system/vendor/lib/libuvtswenc_sa.ca7.android.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libvp8dec_sa.ca7.so:system/vendor/lib/libvp8dec_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libvp8enc_sa.ca7.so:system/vendor/lib/libvp8enc_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libvp9dec_sa.ca7.so:system/vendor/lib/libvp9dec_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libh264enc_sa.ca7.so:system/vendor/lib/libh264enc_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libh264enc_sb.ca7.so:system/vendor/lib/libh264enc_sb.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libmp4enc_sa.ca7.so:system/vendor/lib/libmp4enc_sa.ca7.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libmp4enc_xa.ca7.so:system/vendor/lib/libmp4enc_xa.ca7.so \
    $(LOCAL_PATH)/proprietary/media/audio/ringtones/Resurrection_Ringtone2.mp3:system/media/audio/ringtones/Resurrection_Ringtone2.mp3 \
    $(LOCAL_PATH)/proprietary/media/audio/ringtones/Resurrection.mp3:system/media/audio/ringtones/Resurrection.mp3 

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# Telecomm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
    
# Display
PRODUCT_PACKAGES += \
    libion

# GPS
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Thermal
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
     $(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf \
     $(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc 

## Ramdisk ## 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/root/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/rootdir/root/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/rootdir/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.swap:root/fstab.swap \
    $(LOCAL_KERNEL):kernel

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp \
    ro.mount.fs=EXT4 \
    debug.hwui.render_dirty_regions=false \
    ro.sf.lcd_density=320 \
    persist.radio.multisim.config=dsds \
    ro.mtk_lte_support=1 \
    ro.telephony.ril_class=MT6735 \
    ro.telephony.ril.config=fakeiccid \
    ro.telephony.sim.count=2 \
    persist.gemini.sim_num=2 \
    ril.current.share_modem=2 \
    ro.mtk_gps_support=1 \
    ro.mtk_agps_app=1 \
    persist.debug.xlog.enable=1 \
    persist.sys.display.clearMotion=0 

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Torch
PRODUCT_PACKAGES += \
    Torch

# Camera
PRODUCT_PACKAGES += \
    Snap

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    libfmcust \
    libmtkplayer

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fmr/mt6627_fm_cust.cfg:system/etc/fmr/mt6627_fm_cust.cfg

# mrdump related
PRODUCT_PACKAGES += \
    libmrdump \
    mrdump_tool

# 3rd-party apps
PRODUCT_PACKAGES += \
    YGPS \
    Jelly \
    EngineerMode

PRODUCT_PACKAGES += \
    YahooWeatherProvider

#Hack for prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell touch $(OUT)/obj/KERNEL_OBJ/usr/export_includes)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Leagoo-M8-Pro
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_MODEL=Leagoo-M8-Pro

PRODUCT_LOCALES := ru_RU en_US en_US cs_CZ da_DK de_AT de_CH de_DE de_LI el_GR en_AU en_CA en_GB en_NZ en_SG eo_EU es_ES fr_CA fr_CH fr_BE fr_FR it_CH it_IT ja_JP ko_KR nb_NO nl_BE nl_NL pl_PL pt_PT ru_RU sv_SE tr_TR zh_CN zh_HK zh_TW am_ET hi_IN en_US en_AU en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN zh_HK ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET en_XA ar_XB fr_CA km_KH lo_LA ne_NP si_LK mn_MN hy_AM az_AZ ka_GE my_MM mr_IN ml_IN is_IS mk_MK ky_KG eu_ES gl_ES bn_BD ta_IN kn_IN te_IN uz_UZ ur_PK kk_KZ sq_AL gu_IN pa_IN be_BY bs_BA ast_ES lb_LU ku_IQ
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Device modules
PRODUCT_PACKAGES += \
    libGLES_android

## CM14 mtk symbols
PRODUCT_PACKAGES += \
    libmtk_symbols

## GPS
PRODUCT_PACKAGES += \
    gps.mt6735

# Superuser
WITH_SU := true
