# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/shootervm/device.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit some common cdma stuff.
#$(call inherit-product, vendor/ev/config/cdma.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_shootervm
PRODUCT_BRAND := Virgin_Mobile
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT="virgin_mobile/htc_shooter/shooter:4.0.3/IML74K/372137.2:user/release-keys" PRIVATE_BUILD_DESC="1.13.652.2_R2 CL372137 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := contendo
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Evo V 4g\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @jmz_software for the latest Evervolv updates\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage
