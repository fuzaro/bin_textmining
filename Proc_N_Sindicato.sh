#!/bin/bash
IFS=$'\n'
middle () { head -n $[ $1 + $2 ] | tail -n $2; }

	for i in $(< Empresas.txt)
		do
		echo "processando Empresa"$i
		empr=$(echo $i|cut -f1 -d"|")
		fila=$(echo $i|cut -f2 -d"|")
		echo $empr
		echo $fila
		touch linhas
		mkdir -p empresas/$fila
#		read w
		for j in `ls *.txt`
			do
			echo "Processando Arquivo"$j
#			grep -n $i $j | cut -d: -f1 >> linhas
			tac $j |grep -in $empr | cut -d: -f1 >> linhas



#			read x
			k=0
			x=0
			for k in `cat linhas`
				do
				inic=$(expr $k - 10)
				k=$(expr $k - 3)
				fim=30
#				head -n $(expr $inic + $fim ) $j | tail -n $fim > empresas/$i/$(basename $j .txt).$x.txt
		#	middle $inic $fim < $j > empresas/$i.$j.$x.txt
#			sed -ne ''$inic',+'$fim'p' $j > empresas/$i/$(basename $j .txt).$x.txt 
			tac $j | sed -ne ''$k',/[0-9]\{4\}-[0-9]\{2\}\.[0-9]\{4\}\.[0-9]\.[0-9][0-9]\.[0-9]\{4\}/p'|tac  > empresas/$fila/$(basename $j .txt).$fila.$x.txt 
				((++x))
				echo "arquivo "$j" valores inicio "$inic" e final "$fim
#				read z
			done
			cat linhas
			rm linhas
		done
	done
