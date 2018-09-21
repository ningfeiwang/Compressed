#!/bin/bash 

path=~/compressed/data
zippath=~/compressed/data_com
cd $path
folderlist=`ls`

for i in $folderlist
do
	
	echo $i
	mkdir $zippath/$i
	cd $path/$i
	filelist=`ls`
	for k in $filelist
	do
		mkdir $zippath/$i/$k
		echo $k
		cd $path/$i/$k
	 	img=`ls`
	 	for j in $img
	 	do
			echo $j
	 		zip $j.zip $j
	 		mv $path/$i/$k/$j.zip $zippath/$i/$k/$j.zip     
	 	done
	done
done

