#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    setup_mainmic2headphone.sh \
    init.qcom.crashdata.sh \
    init.qcom.usb.sh \
    init.qcom.class_core.sh \
    setup_topmic2headphone.sh \
    init.qti.fm.sh \
    init.qcom.post_boot.sh \
    capture_1adc.sh \
    teardown_loopback.sh \
    setup_headsetmic2headphone.sh \
    init.qcom.sh \
    init.qti.chg_policy.sh \
    init.class_main.sh \
    init.qcom.efs.sync.sh \
    init.mdm.sh \
    init.crda.sh \
    init.qti.ims.sh \
    init.qcom.early_boot.sh \
    init.qcom.coex.sh \
    capture.sh \
    init.qcom.sdio.sh \
    qca6234-service.sh \
    init.qcom.sensors.sh \
    playback.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.usb.rc \
    init.brcm.rc \
    init.remosaic.rc \
    init.qcom.rc \
    init.msm.usb.configfs.rc \
    init.target.rc \
    init.qcom.factory.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/dipper/dipper-vendor.mk)
