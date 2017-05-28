#!/bin/sh
yum update -y
yum groupinstall -y "Development Tools"
yum install -y epel-release htop tmux wget zlib-static openssl-devel\
    ncurses-devel gcc-aarch64-linux-gnu

adduser builder

cd /home/builder
su builder -c "git clone https://github.com/woodrad/openwrt-builds.git"
cd /home/builder/openwrt-builds
su builder -c "./get_openwrt.sh"
