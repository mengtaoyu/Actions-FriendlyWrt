#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
sed -i -e '$s/$/CONFIG_PACKAGE_kmod-netem=y/' configs/rockchip/01-nanopi
sed -i -e '$s/$/CONFIG_PACKAGE_kmod-sched-core=y/' configs/rockchip/01-nanopi
sed -i -e '$s/$/CONFIG_PACKAGE_kmod-sched=y/' configs/rockchip/01-nanopi
tail -n 5 configs/rockchip/01-nanopi
