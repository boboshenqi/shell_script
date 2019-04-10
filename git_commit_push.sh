#!/bin/sh

git add . && 
echo "mgit add success-----------" && 
git commit -m "$1" &&
echo "mgit commit success--------" &&
git pull && 
echo "mgit pull success----------" &&
git push &&
echo "mgit push success----------"
