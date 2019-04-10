echo "$1"
echo "$2"
echo "$3"

shift $((OPTIND-1))
#shift $1
echo "shift after"

echo "1=$1"
echo "2=$2"
echo "3=$3"

