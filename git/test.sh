curtime1=$(($(date +%s%N)/1000000))
sleep 1;
curtime2=$(($(date +%s%N)/1000000))
timediff=$(($curtime2-$curtime1))
echo $timediff
