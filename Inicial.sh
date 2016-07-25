#!/bin/bash

for i in `ls`
	do
	echo $i
	cd $i
	mkdir  inicial
	mv *.txt inicial/
	pwd
	cd ..
	done
