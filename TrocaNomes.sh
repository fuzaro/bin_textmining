#!/bin/bash
IFS=$'\n'

for j in `ls`
	do
	cd $j
	ls *.pdf > files.in
	for k in $(< files.in)
		do
		dia=$(echo "$k" |cut -d- -f1 |cut --delimiter=" " -f2 )
		mes=$(echo "$k" | cut -d- -f2)
		ano=$(echo "$k" | cut -d- -f3| cut -d. -f1)
		echo $k "---> " $ano$mes$dia
		mv  $k $(echo $ano$mes$dia).pdf
		done
	cd ..
	done
