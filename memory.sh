free

memTotal=$(free | grep Mem | awk '{print$2}')
echo $memTotal

memUsed=$(free | grep Mem | awk '{print$3}')
echo $memUsed

memFree=$(free | grep Mem | awk '{print$4}')
echo $memFree

echo "scale=2;$memFree / $memTotal * 100 " | bc -l
