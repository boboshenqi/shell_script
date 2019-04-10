#!/bin/sh
usage() { 
	echo "Usage: $0 [-n] 'commit message'" ;
	echo "-n: no pull before push"
	exit 1; 
}


while getopts 'n:' op
do
  case $op in
    n) nopull="yes" ;;
    *) usage ;;
  esac
  shift
done

if [ -z "$1" ]
then usage
fi

# color: \\e[32m test \\e[0m
#current_time $(($(date +%s%N)/1000000))



git add . && 
t_add=$(($(date +%s%N)/1000000))
echo "\\e[32m mgit add success-----------\\e[0m" && 

git commit -m "$1" &&
t_commit=$(($(date +%s%N)/1000000))
echo "\\e[32m mgit commit success--------[(($t_commit-$t_add)) ms]\\e[0m" &&

if [ -z "$nopull" ]
then git pull 
t_pull=$(($(date +%s%N)/1000000))
echo "\\e[32m mgit pull success----------[(($t_pull-$t_commit)) ms]\\e[0m" 
t_commit=t_pull
fi && 

git push &&
t_push=$(($(date +%s%N)/1000000))
echo "\\e[32m mgit push success----------[(($t_push-$t_commit)) ms]\\e[0m"
