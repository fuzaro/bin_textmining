#!/bin/bash

#!/bin/bash

	rmdir txt
	for k in `ls *.pdf`
		do
		pdftotext -raw $k
echo $k
		done
