APP_PROJECT_PATH := $(call my-dir)/..

include jni/Settings.mk

APP_STL := gnustl_static
APP_CFLAGS := -O3 -DNDEBUG -g # arm-linux-androideabi-4.4.3 crashes in -O0 mode on SDL sources
APP_PLATFORM := android-18 # Android 4.3, the first one with GLES3 support
APP_PIE := true # This feature makes executables incompatible to Android API 15 or lower, but executables without PIE will not run on Android 5.0 and newer
