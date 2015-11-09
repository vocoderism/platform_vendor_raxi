# Generic product
PRODUCT_NAME := raxi
PRODUCT_BRAND := raxi
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.layers.noIcon=noIcon \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=1 \
    persist.sys.usb.config=mtp,adb \
    ro.qti.sensors.max_geomag_rotv=60 \
    ro.qti.sensors.max_gyro_rate=200 \
    ro.qti.sensors.max_accel_rate=200 \
    ro.qti.sensors.max_grav=200 \
    ro.qti.sensors.max_rotvec=200 \
    ro.qti.sensors.max_orient=200 \
    ro.qti.sensors.max_linacc=200 \
    ro.qti.sensors.max_gamerv_rate=200 \
    ro.qti.sensors.smd=true \
    ro.qti.sensors.game_rv=true \
    ro.qti.sensors.georv=true \
    net.tethering.noprovisioning=true \
    log.tag.launcher_force_rotate=VERBOSE \
    persist.sys.NV_FPSLIMIT=90 \
    persist.sys.NV_POWERMODE=1 \
    persist.sys.NV_PROFOVER=15 \
    persist.sys.NV_STEREOCTRL=0 \
    persist.sys.NV_STEREOSEPCHG=0 \
    persist.sys.NV_STEREOSEP=20 \
    profiler.debugmonitor=false \
    profiler.launch=false \
    profiler.hung.dumpdobugreport=false 

# Extra packages
PRODUCT_PACKAGES += \
    Busybox \
    Exchange2 \
    Launcher3 \
    Stk 

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/raxi/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/raxi/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# APN list
PRODUCT_COPY_FILES += \
    vendor/raxi/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/raxi/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/raxi/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

#Layers
PRODUCT_COPY_FILES += \
        vendor/raxi/prebuilt/common/system/app/layersmanager.apk:system/app/layersmanager.apk

#Explorer
PRODUCT_COPY_FILES += \
        vendor/raxi/prebuilt/common/system/app/explorer.apk:system/app/explorer.apk

#Bootanimation
PRODUCT_COPY_FILES += \
        vendor/raxi/prebuilt/common/system/media/bootanimation.zip:system/media/bootanimation.zip
