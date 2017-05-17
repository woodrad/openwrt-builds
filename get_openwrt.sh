#! /bin/sh
git clone https://github.com/openwrt/openwrt.git
cd openwrt
git checkout v15.05.1
./scripts/feeds update -a; ./scripts/feeds install -a
