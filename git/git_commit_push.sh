#!/bin/sh
usage() { 
	echo "Usage: $0 [-n] 'commit message'" ;
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

# \e[31m

git add . && 
echo "\e[32m mgit add success-----------\e[0m" && 
git commit -m "$1" &&
echo "\e[32m mgit commit success--------\e[0m" &&
if [ -z "$nopull" ]
then git pull 
echo "\e[32m mgit pull success----------\e[0m" 
fi && 
git push &&
echo "\e[32m mgit push success----------\e[0m"
