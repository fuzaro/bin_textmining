#!/bin/bash

#!/bin/bash
IFS=$'\n'
for j in $(ls)
	do
	cd $j
	for k in `ls *.pdf`
		do
		pdftotext -raw $k
echo $k
		done
	cd ..
	done
