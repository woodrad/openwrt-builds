#! /bin/sh
if [[ -z "$1"  ]]
then
  THREADS=1
else
  THREADS=$1
fi

make -j${THREADS} V=s >> compile.log 2>&1    
