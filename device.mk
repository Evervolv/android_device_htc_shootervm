# Inherit common shooter stuffs
$(call inherit-product, device/htc/shooter/device_base.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shootervm/overlay

# Voicemail and APN
PRODUCT_COPY_FILES += \
    device/htc/shootervm/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/shootervm/configs/voicemail-conf.xml:system/etc/voicemail-conf.xml

## CDMA Virgin Mobile stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.locationfeatures=1

PRODUCT_NAME := htc_shooter
PRODUCT_DEVICE := shooter
