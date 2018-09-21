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
			z="zip"
			if [[ $j =~ $z ]]
			then
				echo $j
	 			echo mv  ${path}/${i}/${k}/${j}  ${zippath}/${i}/${k}/ 
				mv ${path}/${i}/${k}/${j} ${zippath}/${i}/${k}/${j} 
	 		fi
		done
	done
done

