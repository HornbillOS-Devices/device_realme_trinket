# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.sat.fallback.dist=40 \
    persist.camera.sat.fallback.dist.d=10 \
    persist.camera.sat.fallback.luxindex=330 \
    persist.camera.sat.fallback.lux.d=50 \
    persist.vendor.camera.enableNCSService=TRUE \
    persist.vendor.camera.enableTOFInterface=TRUE \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap

# CNE and DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=1 \
    persist.vendor.dpm.loglevel=0 \
    persist.vendor.dpm.nsrm.bkg.evt=3955

# Data Modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hist.brightness.threshold=7 \
    ro.sf.lcd_density=320 \
    ro.vendor.display.ad=1 \
    ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
    ro.vendor.display.sensortype=2

# Liquid Smooth Ui
persist.service.lgospd.enable=0
persist.service.pcsync.enable=0
touch.presure.scale=0.001
system_smooth_lcd=100%
Faster_system_multitasking=2x

# Higher fling velocities for smooth scrolling and to provide better responsiveness - From HalogenOS Team
ro.min.fling_velocity=140
ro.max.fling_velocity=40000

# IMS - disable logging
persist.ims.disableADBLogs=1
persist.ims.disableDebugLogs=1
persist.ims.disableIMSLogs=1
persist.ims.disableQXDMLogs=1

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.cpurend.vsync=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    media.settings.xml=/system/etc/media_profiles_vendor.xml \
    vendor.mm.enable.qcom_parser=63963135

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q855-16947-1

# OTG
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.oem.otg_support=true

#Ram Managemant
ro.config.hw_fast_dormancy=1

#Enable Zygote Preforking
persist.device_config.runtime_native.usap_pool_enabled=true

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

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    ril.subscription.types=NV,RUIM \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.NO_STAPA=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.radio.enable_temp_dds=true \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.redir_party_num=1 \
    persist.vendor.radio.report_codec=1 \
    telephony.lteOnCdmaDevice=1

# RCS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.enable.mag_filter=true

# Subsystem ramdump
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

#SurfaceFlinger Boost
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
ro.min.fling_velocity=140
ro.max.fling_velocity=40000

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Vendor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

# Zram
persist.service.zram=0
ro.zram.default=0
