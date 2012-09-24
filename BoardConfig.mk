
# All we want to do here is inherit from shooter common.
-include device/htc/shooter/BoardConfig.mk

TARGET_PREBUILT_KERNEL := device/htc/shooter/prebuilt/root/kernel
TARGET_KERNEL_CONFIG   := shooter_defconfig
BUILD_KERNEL           := true
