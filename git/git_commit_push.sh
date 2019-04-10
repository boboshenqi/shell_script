#!/bin/sh

while getopts 'n:' op
do
  case $op in
    n) nopull="yes" ;;
  esac
done

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
