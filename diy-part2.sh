#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.223/g' package/base-files/files/bin/config_generate
#Add customize packages
git clone https://github.com/jerrykuku/node-request.git package/lean
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean
