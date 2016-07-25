#!/bin/bash

for i in `ls *.txt`
	do

echo "Processando Osasco",$i
		sed -n '/Vara do Trabalho de Osasco/,/Vara do Trabalho de Santana/p' $i > Osasco/$(basename "$i" .txt )-Osa.txt
arq=$(basename  "$i" .txt)-Osa.txt

echo "$arq"


echo ""
echo ""
echo ""
echo "Processando Itapevi",$i
		sed -n '/Vara do Trabalho de Itapevi/,/Vara do Trabalho de Itaquaquecetuba/p' $i > Itapevi/$(basename "$i" .txt )-Ita.txt
	done
