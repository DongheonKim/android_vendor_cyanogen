# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lu3000/device_lu3000.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_lu3000
PRODUCT_BRAND := lge
PRODUCT_DEVICE := lu3000
PRODUCT_MODEL := LG-lu3000
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_bproj BUILD_ID=GRJ22 BUILD_FINGERPRINT="lge/lge_bproj/bproj_EUR-XXX:2.3.4/GRJ22/LG-lu3000-V20d.421CC761:user/release-keys" PRIVATE_BUILD_DESC="lge_bproj-user 2.3.4 GRJ22 LG-lu3000-V20d.421CC761 release-keys"

# Broadcom FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMACH
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Add the Torch app
PRODUCT_PACKAGES += Torch
