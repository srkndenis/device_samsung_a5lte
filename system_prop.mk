# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.video=true \
    vendor.audio.av.streaming.offload.enable=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio_hal.period_size=192 \
    vendor.dedicated.device.for.voip=true \
    vendor.voice.path.for.pcm.voip=false \
    av.offload.enable=true \
    persist.audio.dirac.speaker=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.mode=endfire \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7

# ACDB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.calfile0=/vendor/etc/acdbdata/Bluetooth_cal.acdb \
    persist.audio.calfile1=/vendor/etc/acdbdata/General_cal.acdb \
    persist.audio.calfile2=/vendor/etc/acdbdata/Global_cal.acdb \
    persist.audio.calfile3=/vendor/etc/acdbdata/Handset_cal.acdb \
    persist.audio.calfile4=/vendor/etc/acdbdata/Hdmi_cal.acdb \
    persist.audio.calfile5=/vendor/etc/acdbdata/Headset_cal.acdb \
    persist.audio.calfile6=/vendor/etc/acdbdata/Speaker_cal.acdb

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.bluetooth.soc=pronto \
    vendor.qcom.bluetooth.soc=pronto \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bt.bdaddr_path=/efs/bluetooth/bt_addr

# Treble Misc.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false \
    camera.disable_treble=true

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500 \
    ro.build.shutdown_timeout=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.enable.sglscale=1 \
    debug.hwui.use_buffer_age=false \
    debug.mdpcomp.idletime=600 \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    ro.qualcomm.cabl=0 \
    ro.qualcomm.svi=1 \
    ro.opengles.version=196608 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Data services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=false

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

#DNS
PRODUCT_PROPERTY_OVERRIDES += \
    net.dns1=1.1.1.1 \
    net.dns2=1.0.0.1 \
    net.rmnet0.dns1=1.1.1.1 \
    net.rmnet0.dns2=1.0.0.1 \
    net.gprs.dns1=1.1.1.1 \
    net.gprs.dns2=1.0.0.1 \
    net.ppp0.dns1=1.1.1.1 \
    net.ppp0.dns2=1.0.0.1 \
    net.wlan0.dns1=1.1.1.1 \
    net.wlan0.dns2=1.0.0.1 \
    net.eth0.dns1=1.1.1.1 \
    net.eth0.dns2=1.0.0.1 \
    dhcp.eth0.dns1=1.1.1.1 \
    dhcp.eth0.dns2=1.0.0.1 \
    dhcp.wlan0.dns1=1.1.1.1 \
    dhcp.wlan0.dns2=1.0.0.1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    drm.service.enabled=1 \
    vidc.enc.narrow.searchrange=1

# Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true \
    persist.device_config.runtime_native.usap_pool_size_max=5 \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.am.reschedule_service=true \
    ro.config.avoid_gfx_accel=true

# DEX
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8 \
    ro.core_ctl_min_cpu=0 \
    ro.core_ctl_max_cpu=4

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libsec-ril.so \
    rild.libpath2=/vendor/lib/libsec-ril-dsds.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.rat_on=combine \
    ril.subscription.types=NV,RUIM \
    ro.ril.telephony.nstrings=7 \
    ro.telephony.default_network=9 \
    ro.product_ship=true \
    ro.ril.transmitpower=true \
    persist.radio.add_power_save=1 \
    persist.radio.no_wait_for_card=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.jbims=1 \
    telephony.lteOnGsmDevice=1 \
    ro.ril.telephony.mqanelements=6 \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.ril.config=simactivation

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.id.midi=90BA \
    ro.usb.id.midi_adb=90BB \
    ro.usb.id.mtp=300B \
    ro.usb.id.mtp_adb=300C \
    ro.usb.id.ptp=300D \
    ro.usb.id.ptp_adb=300E \
    ro.usb.id.ums=300F \
    ro.usb.id.ums_adb=3010 \
    ro.usb.vid=2a96

# Fastbootd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# Zram
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.config.zram=true
