LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# include the non-open-source counterpart to this file
-include vendor/xiaomi/libra/AndroidBoardVendor.mk

#Create symbolic link
$(shell mkdir -p $(TARGET_OUT)/lib/modules; \
        ln -sf /system/lib/modules/qca_cld/qca_cld_wlan.ko \
               $(TARGET_OUT)/lib/modules/wlan.ko)

# Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /persist/wlan_mac.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin )
