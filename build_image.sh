#! /bin/sh
if [[ -z "$1"  ]]
then
  THREADS=$(nproc --all)
else
  THREADS=$1
fi

make -j${THREADS} V=s >> compile.log 2>&1    
