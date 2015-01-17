#!/bin/bash

#optimize=-o7

dir=1152x784
cut=80
mkdir $dir
for x in org/*.png
do
	y=`basename $x`

	beg=${y:0:3}

	if [ $beg = "bar" ]
	then
		convert $x -crop -0-$cut $dir/$y
	elif [ $beg = "mar" ]
	then
		convert $x -trim $dir/$y
	elif [ $beg = "tim" ]
	then
		convert $x -crop -0-$cut $dir/$y
	else
		cp $x $dir/$y
	fi
done
#optipng $optimize $dir/*.png

