#----------------------------------------------------
# Author: momo0853@live.com
# Time  : Fri Nov 27 15:12:45 CST 2015
#----------------------------------------------------

# This is an automatically generated file, in order to reduce repetitive work.
# Android.mk: For more details, please see "http://developer.android.com/ndk/guides/android_mk.html".
# Application.mk: For more details, please see "http://developer.android.com/ndk/guides/application_mk.html".
# Can identify the suffix for .c .cc .cpp and .a .so.


LOCAL_PATH := $(call my-dir)

JSONCPP_DIR = $(LOCAL_PATH)/../../..
JSONCPP_SRC = $(JSONCPP_DIR)/src

#---------- static module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := libjsoncpp
LOCAL_ARM_MODULE := arm

LOCAL_CFLAGS := -fexceptions -std=c++11 -Wall -Wconversion -DJSON_USE_EXCEPTION=0
LOCAL_EXPORT_CFLAGS := -std=c++11
LOCAL_SRC_FILES := \
    $(JSONCPP_SRC)/lib_json/json_value.cpp \
    $(JSONCPP_SRC)/lib_json/json_reader.cpp \
    $(JSONCPP_SRC)/lib_json/json_writer.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/lib_json $(JSONCPP_DIR)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := test_runner
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES := $(JSONCPP_SRC)/jsontestrunner/main.cpp
LOCAL_LDLIBS  := -llog
LOCAL_STATIC_LIBRARIES := libjsoncpp
include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := test_lib
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES := \
    $(JSONCPP_SRC)/test_lib_json/main.cpp \
    $(JSONCPP_SRC)/test_lib_json/jsontest.cpp
LOCAL_LDLIBS  := -llog
LOCAL_STATIC_LIBRARIES := libjsoncpp
include $(BUILD_EXECUTABLE)


