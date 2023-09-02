#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Audio Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml
    $(LOCAL_PATH)/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml
    $(LOCAL_PATH)/audio/audio_effects_dirac.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_dirac.xml
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml
    $(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt
    $(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml
    $(LOCAL_PATH)/audio/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml
    $(LOCAL_PATH)/audio/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixxer_paths_cdp.xml
    $(LOCAL_PATH)/audio/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_cdp.xml
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml
    $(LOCAL_PATH)/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/etc/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-impl \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.kona \
    libdisplayconfig.qti \
    libdisplayconfig.system.qti \
    libqdMetaData \
    libqdMetaData.system \
    memtrack.kona \
    vendor.display.config@1.15.vendor \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor


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
    fstab.default \
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
    ueventd.qcom.rc \
    init.qdmastats.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RAMDISK)/fstab.default \
    $(LOCAL_PATH)/rootdir/etc/init.qdmastats.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qdmastats.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.default \
    $(LOCAL_PATH)/rootdir/etc/fstab.defa:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.default

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \

# Inherit the proprietary files
$(call inherit-product, vendor/lenovo/moba/moba-vendor.mk)
