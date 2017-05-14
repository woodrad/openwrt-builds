#!/usr/bin/sh
yum update -y
yum groupinstall -y "Development Tools"
gpg --keyserver keys.fedoraproject.org --recv-key 352C64E5
rpm -i http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
yum install -y htop tmux wget zlib-static openssl-devel ncurses-devel

adduser builder
su - builder

git clone https://github.com/woodrad/openwrt-builds.git
