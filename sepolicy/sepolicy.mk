#
# This policy configuration will be used by all products that
# inherit from SimpleAOSP
#

BOARD_SEPOLICY_DIRS += \
    vendor/raxi/sepolicy

BOARD_SEPOLICY_UNION += \
service_contexts \
system.te
  

