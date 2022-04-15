#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i '$a src-git ssrp https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall;packages' feeds.conf.default
sed -i '$a src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall;luci' feeds.conf.default
sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
#sed -i '1i src-git mosdns https://github.com/QiuSimons/openwrt-mos' feeds.conf.default


#Add external packages
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/others/luci-app-openclash
git submodule add -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/others/luci-theme-edge
git clone https://github.com/thinktip/luci-theme-neobird.git package/others/luci-theme-neobird
#svn co https://github.com/QiuSimons/openwrt-mos/trunk/v2ray-geodata package/others/v2ray-geodata
