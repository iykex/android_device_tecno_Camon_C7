#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build frameworks/av frameworks/base frameworks/native system/core system/sepolicy system/netd packages/apps/FMRadio/jni/fmr"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v $rootdirectory/device/tecno/Camon_C7/patches/$dir/*.patch
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
