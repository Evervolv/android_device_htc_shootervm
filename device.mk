# Inherit common shooter stuffs
$(call inherit-product, device/htc/shooter/device_base.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shootervm/overlay

## CDMA Virgin Mobile stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.locationfeatures=1

PRODUCT_NAME := htc_shooter
PRODUCT_DEVICE := shooter
