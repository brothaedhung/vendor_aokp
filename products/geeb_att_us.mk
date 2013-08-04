# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for geeb_att_us
$(call inherit-product, device/lge/geeb_att_us/full_geeb_att_us.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Release name
PRODUCT_RELEASE_NAME := geeb_att_us

$(call inherit-product, vendor/aokp/configs/common_versions.mk)

# Setup device specific product configuration
PRODUCT_NAME := aokp_geeb_att_us
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geeb_att_us
PRODUCT_MODEL := LG-E970
PRODUCT_MANUFACTURER := LGE

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/icog/bootanimation/4.3bootanimation.zip:system/media/bootanimation.zip

# Prebuilt DSPManager
PRODUCT_COPY_FILES += \
        vendor/icog/apps/DSPManager.apk:system/app/DSPManager.apk \
	vendor/icog/apps/DSP/etc/audio_effects.conf:system/etc/audio_effects.conf \
	vendor/icog/apps/DSP/etc/audio_policy.conf:system/etc/audio_policy.conf \
	vendor/icog/apps/DSP/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
	vendor/icog/apps/DSP/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
	vendor/icog/apps/DSP/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
	vendor/icog/apps/DSP/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
	vendor/icog/apps/DSP/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
	vendor/icog/apps/DSP/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
	vendor/icog/apps/DSP/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Apps
PRODUCT_COPY_FILES += \
	vendor/icog/apps/LockClock.apk:system/app/LockClock.apk \
	vendor/icog/apps/com.keramidas.TitaniumBackup-1.apk:system/app/com.keramidas.TitaniumBackup-1.apk \
        vendor/icog/apps/XposedInstaller_2.1.4.apk:system/app/XposedInstaller_2.1.4.apk \
        vendor/icog/apps/AppSettings0.4.apk:system/app/AppSettings0.4.apk \


