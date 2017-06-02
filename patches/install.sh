#!/usr/bin/bash
echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/base frameworks/native hardware/libhardware packages/apps/Settings system/core system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/tecno/Camon_C7/patches/$dir/*.patch
	echo " "
done

#echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
