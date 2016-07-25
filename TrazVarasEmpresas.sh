#!/bin/bash
IFS=$'\n'


#for vara in `cat VARAS`
#       do
#       if 
for emp in $(ls)
do
echo $emp
cd $emp/inicial

for i in `ls *.txt`
        do
        proc_vara=$(head -n 1 $i|sed -e 's/^.*\(.\{4\}\)$/\1/')
        echo $proc_vara
	for vara in `cat ../../../VARAS`
		do
#echo $vara " e igual " $proc_vara
#read x
		if [ "$proc_vara" == "$vara" ]
			then
			mv $i ../
			echo "Movendo... "$i
			break
		fi
        	done
	done

cd ../..
done
