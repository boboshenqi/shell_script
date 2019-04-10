#!/bin/sh
usage() { 
	echo "Usage: $0 [-n] 'commit message'" ;
	exit 1; 
}


while getopts 'n:' op
do
  case $op in
    n) nopull="yes" ;;
  esac
  shift
done

if [ -z "$1" ]
then usage
else
git add . && 
echo "mgit add success-----------" && 
git commit -m "$1" &&
echo "mgit commit success--------" &&
if [ -z "$nopull" ]
then git pull 
echo "mgit pull success----------" 
fi && 
git push &&
echo "mgit push success----------"

fi
