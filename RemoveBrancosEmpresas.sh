#!/bin/bash
IFS=$'\n'

for i in `ls`
	do
	pwd
	cd $i
	pwd
		for file in *.txt;
		do
	    		mv "$file" "${file//[[:space:]]}"
		done
	cd ..
	done

