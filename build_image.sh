#! /usr/bin/sh
if [[ -z "$1"  ]]
then
  THREADS=$(nproc --all)
else
  THREADS=$1
fi

export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64

make -j${THREADS} V=s 
