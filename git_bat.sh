#!/bin/sh
parameter="$1"
if [ -z "$parameter" ]
then echo 'commit message is null,please check it and try again'
else 
	git add .
	msg=":art: ${parameter}"
	git commit -m "$msg"
	echo "----------------------"
	git push
fi
