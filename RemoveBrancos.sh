#!/bin/bash
IFS="\n"

	for file in *.txt;
	do
	    mv "$file" "${file//[[:space:]]}"
	done

