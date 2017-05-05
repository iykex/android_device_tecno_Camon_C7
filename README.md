TECNO CAMON C7
==============

The tecno Camon C7 (codenamed _"Camon_C7"_) is a flagship smartphone from tecno.

This LineageOS 14.1 Device tree for TECNO CAMON C7

For more information about building read "manual"

Basic        | Spec Sheet
------------:|:------------------------
CPU          | 1.3GHz Quad-Core | MT6735
GPU          | Mali-T720
Memory       | 2GB RAM
Shipped Android Version | 6.0
Storage      | 16GB
Battery      | 2500 mAh
Display      | 5.0 
Front Camera | 13MP


This branch is device for building of LineageOS 14.1 (or Android Nougat 7.1.x AOSP based roms) ROM.


# tecno_Camon_C7_device_tree

# How To Compile

1. Download both device tree and vendor tree and extract them to device/tecno/tecno_Camon_C7 and vendor/tecno/tecno_Camon_C7 respectivly.
  or cd to your working directory
  And Execute That :
git clone https://github.com/DarkWoodens/android_device_tecno_Camon_C7-general.git -b master  device/tecno/Camon_C7 && git clone https://github.com/DarkWoodens/android_vendor_tecno_Camon_C7-general.git -b master vendor/tecno/Camon_C7 && ./device/tecno/Camon_C7/patches/install.sh

 2. . build/envsetup.sh
 3. lunch
  and select your device from menu [select lineage_Camon_C7-userdebug]

 4. mka bacon -jn [for AOSP Based] / brunch Camon_C7 [for Lineage Based]
  example if you have 4 cpu then n=5
  means n= no of CPU/Core + 1

  adjust -j value if you are working on your machine same time
  # Example :
  ```
  _mka bacon -j5_     [ this for AOSP ]
  ```
  
      or
      
  ```   
   _brunch Camon_C7_    [ this for LOS ]
  ```

 5.  It will take time to compile your build
 6. Find your build in $out directory
 7. Enjoy


