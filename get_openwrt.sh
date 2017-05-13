#! /bin/sh
git clone https://github.com/openwrt/openwrt.git
cd openwrt
./scripts/feeds update -a; ./scripts/feeds install -a
