#!/bin/bash
IFS=$'\n' 
# This needs heirloom-mailx
from="admin@srv.advocaciagarcez.com.br"
to="ceara@srv.advocaciagarcez.com.br"
att=$anex 
 
ls > /tmp/$$
	for i in $(< /tmp/$$) 
		do
		echo "Diretorio "$i
		mkdir -p $i/enviados
		for k in `ls $i/`
			do
			echo "Diretorio "$i "e arquivo "$k 
			subject=$i
			att=$i/$k
			body="$(< $i/$k)""------ Recorte do Arquivo "$k" da Empresa "$i"------"
			echo "Corpo e-mail "$body
			echo $body | mail -s "$subject" -r "$from" -A "$att" "$to" 
			echo "e-mail enviado"
			mv $i/$k $i/enviados
			sleep 1		
			done
		done

#

#mail -s "$subject" -r "$from" -a "$att" "$to" <<< "$body"
