TECNO CAMON C7
==============
```
By : Nana Iyke Quame
```
![CAMON C7](http://i2.wp.com/mobilityarena.com/wp-content/uploads/2016/07/TECNO-Camon-C7-elegant-blue.jpg?resize=600%2C350)

The tecno Camon C7 (codenamed _"Camon_C7"_) is a flagship smartphone from tecno.

This AospExtended Device tree for TECNO CAMON C7

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



This branch is device for building of AospExtended (or Android Nougat 7.1.x AOSP based roms) ROM.


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
         <project path="device/tecno/Camon_C7" name="iykequame/android_device_tecno_Camon_C7" remote="github" revision="AEX"/>

         <project path="vendor/tecno/Camon_C7" name="iykequame/android_vendor_tecno_Camon_C7" remote="github" revision="master"/>
         
         <project path="vendor/mt67xx" name="Oreo2mt6735/oreo_vendor_mt67xx" remote="github" revision="n-7.1.2 "/>

 </manifest>
  ```
  as you use ```ctrl+x``` to save.
   | now back to sourcedir, then use : ```repo sync -c -jx --force-sync --no-clone-bundle --no-tags``` to resync


  # OR


```
git clone https://github.com/iykequame/android_device_tecno_Camon_C7.git -b AEX  device/tecno/Camon_C7
```
```
git clone https://github.com/iykequame/android_vendor_tecno_Camon_C7.git -b master vendor/tecno/Camon_C7
```
```
git clone https://github.com/Oreo2mt6735/oreo_vendor_mt67xx.git -b n-7.1.2 vendor/mt67xx
```

# TO START BUILD :::


 2. $ ```. build/envsetup.sh```
 3. $ ```lunch aosp_Camon_C7-userdebug```

 4. mka aex -jx
  example if you have 4 cpu then x=5
  means x= no of CPU/Core + 1

  adjust -j value if you are working on your machine same time
  # Example :
  ```
  mka aex -j5 
  ```
 5.  It will take time to compile your build
 6. Find your build in $out directory
 7. Enjoy

---------------

