#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    auto_save_stop_aplog.sh \
    stop_aplog.sh \
    init.qcom.efs.sync.sh \
    install-recovery.sh \
    qca6234-service.sh \
    init.qcom.coex.sh \
    kernellog.sh \
    init.qti.chg_policy.sh \
    init.qti.qcv.sh \
    init.qcom.usb.sh \
    init.qcom.class_core.sh \
    catch_aplog.sh \
    init.qcom.early_boot.sh \
    init.qcom.sdio.sh \
    init.qti.dcvs.sh \
    qseelog.sh \
    init.crda.sh \
    clean_aplog.sh \
    init.qcom.sh \
    modemlog_setup.sh \
    modemlog.sh \
    init.qcom.sensors.sh \
    init.qti.display_boot.sh \
    aplog.sh \
    batterylogcontrol.sh \
    init.mdm.sh \
    batterylog.sh \
    copy_aplog.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qti.media.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.usb.rc \
    init.lenovo.common.rc \
    init.qcom.factory.rc \
    init.target.wigig.rc \
    init.lenovo.rc \
    init.qcom.rc \
    init.qti.ufs.rc \
    init.lenovo.usb.configfs.rc \
    init.target.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/lenovo/moba/moba-vendor.mk)
