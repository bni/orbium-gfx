#!/bin/bash

sharp=0.6x0.6+1+0.5

mkdir ico

# Browser icon, address bar
convert small.png -resize 16x16 -unsharp $sharp ico/ico_16x16.png
convert ico/ico_16x16.png \
     \( +clone  -threshold -1 \
        -draw 'fill black polygon 0,0 0,1 1,0 fill white circle 1,1 1,0' \
        \( +clone -flip \) -compose Multiply -composite \
        \( +clone -flop \) -compose Multiply -composite \
     \) +matte -compose CopyOpacity -composite ico/app_16x16.png
rm ico/ico_16x16.png

# Browser icon, bookmark medium
convert small.png -resize 32x32 -unsharp $sharp ico/ico_32x32.png
convert ico/ico_32x32.png \
     \( +clone  -threshold -1 \
        -draw 'fill black polygon 0,0 0,3 3,0 fill white circle 3,3 3,0' \
        \( +clone -flip \) -compose Multiply -composite \
        \( +clone -flop \) -compose Multiply -composite \
     \) +matte -compose CopyOpacity -composite ico/app_32x32.png
rm ico/ico_32x32.png

# Browser icon, bookmark big
convert small.png -resize 48x48 -unsharp $sharp ico/ico_48x48.png
convert ico/ico_48x48.png \
     \( +clone  -threshold -1 \
        -draw 'fill black polygon 0,0 0,5 5,0 fill white circle 5,5 5,0' \
        \( +clone -flip \) -compose Multiply -composite \
        \( +clone -flop \) -compose Multiply -composite \
     \) +matte -compose CopyOpacity -composite ico/app_48x48.png
rm ico/ico_48x48.png

# Android
convert large.png -resize 128x128 -unsharp $sharp ico/app_128x128.png

# iPad, non retina
convert small.png -resize 76x76 -unsharp $sharp ico/app_76x76.png

# iPhone 4-6
convert large.png -resize 120x120 -unsharp $sharp ico/app_120x120.png
