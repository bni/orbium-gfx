#!/bin/bash

#optimize=-o7

dir=464x316
pct=40.28
sharp=0.6x0.6+1+0.5
cut=32
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

dir=704x479
pct=61.11
sharp=0.6x0.6+1+0.5
cut=49
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

dir=936x637
pct=81.25
sharp=0.6x0.6+1+0.5
cut=65
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

dir=1024x697
pct=88.89
sharp=0.6x0.6+1+0.5
cut=71
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

dir=1096x746
pct=95.14
sharp=0.6x0.6+1+0.5
cut=76
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
