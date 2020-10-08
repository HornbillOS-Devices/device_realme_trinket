# Audio
af.fast_track_multiplier=1
vendor.audio_hal.period_size=192
audio.deep_buffer.media=true
vendor.audio.dolby.ds2.enabled=true
vendor.audio.offload.buffer.size.kb=64
vendor.audio.offload.gapless.enabled=true
audio.offload.min.duration.secs=30
vendor.audio.offload.multiple.enabled=false
vendor.audio.offload.track.enable=false
vendor.audio.playback.mch.downsample=true
vendor.audio.safx.pbe.enabled=true
persist.audio.dirac.speaker=true
persist.vendor.audio.fluence.speaker=true
persist.vendor.audio.fluence.voicecall=true
persist.vendor.audio.hw.binder.size_kbyte=1024
ro.vendor.qc.sdk.audio.fluencetype=fluence
ro.vendor.qc.sdk.audio.ssr=false
vendor.audio.tunnel.encode=false
vendor.voice.path.for.pcm.voip=true
vendor.voice.conc.fallbackpath=deep-buffer
vendor.voice.playback.conc.disabled=true
vendor.voice.record.conc.disabled=false
audio.offload.disable=0
audio.offload.pcm.16bit.enable=true
audio.offload.pcm.24bit.enable=true
audio.offload.video=true
persist.vendor.audio.fluence.audiorec=false
persist.audio.fluence.spk.mono=true
persist.vendor.audio.fluence.voicerec=false
vendor.voice.voip.conc.disabled=true
audio.offload.multiaac.enable=true

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

# Ram Managemant
ro.config.hw_fast_dormancy=1

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
