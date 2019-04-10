#!/bin/bash
#create local branch and origin branch
if [ -z "$1" ]
	then echo "需要创建的branch不应为空"
else
	git checkout master && 
	git checkout -b "$1" && 
	git push origin "$1" && 
	git branch --set-upstream-to=origin/"$1" "$1" && 
	git branch -a | grep "$1"
fi
