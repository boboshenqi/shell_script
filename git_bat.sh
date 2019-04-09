#!/bin/sh

#check git workspace
if git add . :
then
	echo "mgit:git add faild! check your workspace"
	return
fi

#commit pull and push
if [ -z "$1" ]
then echo 'commit message is null,please check it and try again'
else 
	msg=" $1"
	git commit -m "$msg"
	echo "mgit:commit done----------------------"
	git pull
	echo "mgit:pull done------------------------"
	git push
fi
