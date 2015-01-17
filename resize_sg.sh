#!/bin/bash

optimize=-o7

dir=392x267
pct=34.03
sharp=0.6x0.6+1+0.5
cut=27
mkdir $dir
for x in org/*.png
do
	y=`basename $x`

	beg=${y:0:3}

	if [ $beg = "bar" ]
	then
		convert $x -resize $pct% -unsharp $sharp -crop -0-$cut $dir/$y
	elif [ $beg = "mar" ]
	then
		convert $x -resize $pct% -unsharp $sharp -trim +repage $dir/$y
	elif [ $beg = "tim" ]
	then
		convert $x -resize $pct% -unsharp $sharp -crop -0-$cut $dir/$y
	else
		convert $x -resize $pct% -unsharp $sharp $dir/$y
	fi
done
#optipng $optimize $dir/*.png

dir=648x442
pct=56.25
sharp=0.6x0.6+1+0.5
cut=45
mkdir $dir
for x in org/*.png
do
	y=`basename $x`

	beg=${y:0:3}

	if [ $beg = "bar" ]
	then
		convert $x -resize $pct% -unsharp $sharp -crop -0-$cut $dir/$y
	elif [ $beg = "mar" ]
	then
		convert $x -resize $pct% -unsharp $sharp -trim +repage $dir/$y
	elif [ $beg = "tim" ]
	then
		convert $x -resize $pct% -unsharp $sharp -crop -0-$cut $dir/$y
	else
		convert $x -resize $pct% -unsharp $sharp $dir/$y
	fi
done
#optipng $optimize $dir/*.png

