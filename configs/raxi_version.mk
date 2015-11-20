#Version of raxi for all builds

PRODUCT_NAME := RAXIFIAN-OS

#Version details
PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 3

RAXI_VERSION := $(PRODUCT_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date + "%Y%m%d")

# Write Raxifian-OS into to build.prop
      PRODUCT_PROPERTY_OVERRIDES += \
        ro.raxi.version=$(RAXI_VERSION)
        
