#!/bin/sh

# WIFI名为MAC后六位
rm -rf package/kernel/mac80211/files/lib/wifi/mac80211.sh
cp -f ../../mac80211.sh package/kernel/mac80211/files/lib/wifi/

cp .config.init .config

# IPv6支持:
cat >> .config <<EOF
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_resolveip=y
EOF
