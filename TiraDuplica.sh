#!/bin/bash

IFS=$'\n'
mkdir duplicados
for i in $(ls *.txt)
	do
	a=$(head -n 1 $i)
	if [ "$a" == "$b" ]
	then
		echo "Removendo .... "$i
		echo "Anterior .... "$b
#		read x
		mv $i duplicados/
	else
		echo "carregando .... "$i
		b=$a
	fi
	done

