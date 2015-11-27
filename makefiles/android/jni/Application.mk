#----------------------------------------------------
# Author: momo0853@live.com
# Time  : Fri Nov 27 15:15:24 CST 2015
#----------------------------------------------------

# This is an automatically generated file, in order to reduce repetitive work.
# Android.mk: For more details, please see "http://developer.android.com/ndk/guides/android_mk.html".
# Application.mk: For more details, please see "http://developer.android.com/ndk/guides/application_mk.html".
# Can identify the suffix for .c .cc .cpp and .a .so.

# myself
APP_OUT  := out
APP_ARCH := arm

NDK_TOOLCHAIN_VERSION := 4.9#(4.6 4.8 4.9)
APP_BUILD_SCRIPT := Android.mk
APP_ABI          := armeabi-v7a#(32_bit(armeabi armeabi-v7a x86 mips), 64_bit(arm64-v8a x86_64 mips64))
APP_PLATFORM     := android-21# "5.0" (3~21)
APP_STL          := gnustl_static#(system stlport_static stlport_shared gnustl_static gnustl_shared \
                                   gabi++_static gabi++_shared c++_static c++_shared)
APP_OPTIM        := release#(release debug)
APP_PIE          := true

