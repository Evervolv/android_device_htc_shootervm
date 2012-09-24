## Inherit shootervm overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/shootervm/overlay

## CDMA Virgin Mobile stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.locationfeatures=1 \
    ro.cdma.home.operator.numeric=311490 \
    ro.cdma.home.operator.alpha=Virgin Mobile \
    gsm.sim.operator.alpha = Virgin Mobile \
    gsm.sim.operator.numeric = 311490 \
    gsm.sim.operator.iso-country = us \
    gsm.operator.alpha = Virgin Mobile \
    gsm.operator.numeric = 311490 \
    gsm.operator.iso-country = us

# Inherit common shooter stuffs
$(call inherit-product, device/htc/shooter/device_base.mk)

PRODUCT_NAME := htc_shootervm
PRODUCT_DEVICE := shootervm
