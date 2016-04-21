LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
#include $(LOCAL_PATH)/../libusb-1.0.20/android/jni/libusb.mk

LOCAL_MODULE := usbreset
LOCAL_SRC_FILES := usbreset.c

LOCAL_CFLAGS := -g -Wall \
-Wmissing-declarations -Wmissing-prototypes \
-Wnested-externs -Wpointer-arith \
-Wpointer-arith -Wsign-compare -Wchar-subscripts \
-Wstrict-prototypes -Wshadow \
-Wformat=2 -Wtype-limits

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := lsusb_dont_use
LOCAL_SRC_FILES := lsusb.c lsusb-t.c names.c usbmisc.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libusb-1.0.20/libusb \
                    $(LOCAL_PATH)/../chromium_org/third_party/libjingle/source/talk/third_party/libudev \
		    $(LIBUSB_ROOT_ABS)

LOCAL_SHARED_LIBRARIES += libusb1.0

LOCAL_CFLAGS := -g -Wall \
-Wmissing-declarations -Wmissing-prototypes \
-Wnested-externs -Wpointer-arith \
-Wpointer-arith -Wsign-compare -Wchar-subscripts \
-Wstrict-prototypes -Wshadow \
-Wformat=2 -Wtype-limits

include $(BUILD_EXECUTABLE)
