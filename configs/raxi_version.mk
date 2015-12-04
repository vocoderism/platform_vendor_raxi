#Version of raxi for all builds

PRODUCT_NAME := RAXFIAN-OS

#Version details
PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 4

RAXI_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Write Raxifian-OS into to build.prop
      PRODUCT_PROPERTY_OVERRIDES += \
        ro.raxi.version=$(RAXI_VERSION)
        
