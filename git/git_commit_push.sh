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
echo "\e[31m mgit add success-----------" && 
git commit -m "$1" &&
echo "\e[31m mgit commit success--------" &&
if [ -z "$nopull" ]
then git pull 
echo "\e[31m mgit pull success----------" 
fi && 
git push &&
echo "\e[31m mgit push success----------"
