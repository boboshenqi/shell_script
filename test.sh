
nopull=""
while getopts 'n:' op
do
  case $op in
    n) nopull="yes" ;;
  esac
done

if [ -z "$nopull" ]
then echo "optpull:"
	echo "null"
else echo "no pull"
fi
