#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.5/g' package/base-files/files/bin/config_generate
git clone -b master https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
# git clone -b master https://github.com/sayhello023/luci-app-vssr package/luci-app-vssr
git clone -b master https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon-18.06
git clone -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone -b master https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
