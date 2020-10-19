#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/realme_trinket/device.mk)

# GAPPS
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Realme
PRODUCT_DEVICE := realme_trinket
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := aosp_realme_trinket

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="realme_trinket" \
    TARGET_DEVICE="realme_trinket" \
    DEVICE_MAINTAINERS="XNXXGANG"

BUILD_FINGERPRINT := "trinket-user-10-QKQ1.200209.002--release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Face Unlock
$(call inherit-product, TARGET_FACE_UNLOCK_SUPPORTED := true)
ifneq ($(TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK), true)
PRODUCT_PACKAGES += \
    FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true
endif
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)

# Build.prop
#
# from device/realme/realme_trinket/system.prop
#
# Bluetooth
ro.bluetooth.emb_wp_mode=true
ro.bluetooth.wipower=true
bt.max.hfpclient.connections=1
vendor.bluetooth.soc=cherokee

# Display
debug.gralloc.enable_fb_ubwc=1
dev.pm.dyn_samplingrate=1
persist.demo.hdmirotationlock=false
persist.hwc.enable_vds=1
ro.qualcomm.cabl=2
ro.vendor.display.cabl=2
ro.vendor.display.ad=1
ro.vendor.display.ad.sdr_calib_data=/data/vendor/display/ad_calib.cfg
ro.vendor.display.sensortype=2

# GPS
persist.backup.ntpServer="0.pool.ntp.org"

# Sensor
ro.vendor.sensors.dev_ori=true
ro.vendor.sensors.pmd=true
ro.vendor.sensors.sta_detect=true
ro.vendor.sensors.mot_detect=true

# Liquid Smooth Ui
persist.service.lgospd.enable=0
persist.service.pcsync.enable=0
touch.presure.scale=0.001
system_smooth_lcd=100%
Faster_system_multitasking=2x

# Misc
persist.chg.max_volt_mv=9000
sys.thermal.data.path=/data/thermal/

# Netflix custom property
ro.netflix.bsp_rev=Q660-13149-1

# QC framework value-adds
ro.vendor.qti.va_aosp.support=1

# Radio
DEVICE_PROVISIONED=1
persist.data.df.dev_name=rmnet_usb0
persist.debug.coresight.config=stm-events
persist.radio.VT_CAM_INTERFACE=2
persist.radio.multisim.config=dsds
persist.timed.enable=true
persist.sys.fflag.override.settings_network_and_internet_v2=true
persist.vendor.qti.telephony.vt_cam_interface=1
persist.vendor.radio.atfwd.start=true
persist.vendor.iwlan.enable=true
persist.vendor.data.iwlan.enable=true
persist.vendor.cne.feature=1
persist.vendor.data.mode=concurrent
persist.vendor.radio.procedure_bytes=SKIP
persist.vendor.radio.apm_sim_not_pwdn=1
persist.vendor.radio.sib16_support=1
persist.vendor.radio.custom_ecc=1
persist.vendor.radio.rat_on=combine
persist.vendor.radio.data_con_rprt=1
persist.vendor.radio.enable_temp_dds=true
ril.subscription.types=NV,RUIM
ro.telephony.default_network=22,22
ro.vendor.use_data_netmgrd=true
ro.telephony.use_old_mnc_mcc_format=true
ro.telephony.iwlan_operation_mode=legacy
telephony.lteOnCdmaDevice=1
vendor.rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so

# Ram Managemant
ro.config.hw_fast_dormancy=1

# SurfaceFlinger
debug.sf.disable_backpressure=1
debug.sf.early_phase_offset_ns=1500000
debug.sf.early_app_phase_offset_ns=1500000
debug.sf.early_gl_phase_offset_ns=3000000
debug.sf.early_gl_app_phase_offset_ns=15000000
debug.sf.enable_gl_backpressure=1
debug.sf.enable_hwc_vds=1
debug.sf.latch_unsignaled=1
ro.surface_flinger.max_frame_buffer_acquired_buffers=3
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true
ro.surface_flinger.max_virtual_display_dimension=4096
ro.surface_flinger.vsync_event_phase_offset_ns=2000000
ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# WFD
persist.debug.wfd.enable=1
persist.sys.wfd.virtual=0

# Zram
persist.service.zram=0
ro.zram.default=0

# end of device/realme/realme_trinket/system.prop
