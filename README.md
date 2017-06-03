TECNO CAMON C7
==============
```
By : Nana Iyke Quame
```
![CAMON C7](http://i2.wp.com/mobilityarena.com/wp-content/uploads/2016/07/TECNO-Camon-C7-elegant-blue.jpg?resize=600%2C350)

The tecno Camon C7 (codenamed _"Camon_C7"_) is a flagship smartphone from tecno.

This LineageOS 14.1 Device tree for TECNO CAMON C7

For more information about building read "manual"

Basic        | Spec Sheet
------------:|:------------------------
CPU          | Cortex-A53 | 1.3GHz Quad-Core | MT6735
GPU          | Mali-T720
Memory       | 2GB RAM
Shipped Android Version | 6.0
Storage      | 16GB
Battery      | Removable 2500 mAh Lithium-Ion
Display      | 5.0
Rear Camera | 13.0 MP , Video
Front Camera | 8.0 MP
Camera Features | LED Flash[front+back], Autofocus



This branch is device for building of LineageOS 14.1 (or Android Nougat 7.1.x AOSP based roms) ROM.


# tecno_Camon_C7_device_tree

# How To Compile

1. Download both device tree and vendor tree and extract them to device/tecno/Camon_C7 and vendor/tecno/Camon_C7 respectivly.
  or cd to your working directory. To do that, simply create a local_manifest.xml to ```sourcedir/.repo/local_manifests```
  Note that , by default ``local_manifest``` directory is not available to you must create it yourself.
  so : 
  ```
     $ cd .repo && mkdir local_manifests
     $ cd local_manifests
     $ > local_manifest.xml && nano local_manifest.xml
  ```
  then copy to paste this in the nano page :
 ```xml
  <?xml version="1.0" encoding="UTF-8"?>
     <manifest>
         <project path="device/tecno/Camon_C7" name="iykequame/android_device_tecno_Camon_C7" remote="github" revision="master"/>

         <project path="vendor/tecno/Camon_C7" name="iykequame/android_vendor_tecno_Camon_C7" remote="github" revision="master"/>

  </manifest>
  ```
  as you use ```ctrl+x``` to save.
   | now back to sourcedir, then use : ```repo sync --force-sync``` to resync 
 
 
  # OR


```
git clone https://github.com/iykequame/android_device_tecno_Camon_C7.git -b master  device/tecno/Camon_C7
```
```
git clone https://github.com/iykequame/android_vendor_tecno_Camon_C7.git -b master vendor/tecno/Camon_C7 
```

# TO START BUILD :::


# you have to/must patch your MTK to meet boot up requirements :)
```
./device/tecno/Camon_C7/patches/install.sh
```


 2. $ ```. build/envsetup.sh```
 3. $ ```lunch```
  and select your device from menu [select ```lineage_Camon_C7-userdebug```]

 4. mka bacon -jn [for AOSP Based] / brunch Camon_C7 [for Lineage Based]
  example if you have 4 cpu then n=5
  means n= no of CPU/Core + 1

  adjust -j value if you are working on your machine same time
  # Example :
  ```
  _mka bacon -j5_     [ this for AOSP ]
  ```
   # OR 
      
  ```   
   _brunch Camon_C7_    [ this for LOS ]
  ```

 5.  It will take time to compile your build
 6. Find your build in $out directory
 7. Enjoy

---------------

