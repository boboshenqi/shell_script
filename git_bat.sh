#!/bin/sh

#check git workspace
git add . && git commit -m "$1" && git pull && git push
