
echo "1 = $1"
echo "2 = $2";
echo "3 = $3"
while getopts 'n:' op
do
  case $op in
    n) nopull="yes" ;;
  esac
  shift
done

echo "1 = $1"
echo "2 = $2";
echo "3 = $3"

if [ -z "$nopull" ]
then echo "optpull:"
	echo "null"
else echo "no pull"
fi
