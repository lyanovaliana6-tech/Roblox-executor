ARCHS = arm64
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RobloxExecutor
RobloxExecutor_FILES = Tweak.xm
RobloxExecutor_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
