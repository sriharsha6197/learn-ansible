free

memTotal=$(free | grep Mem | awk '{print$2}')
echo $memTotal

memUsed=$(free | grep Mem | awk '{print$3}')
echo $memUsed

memFree=$(free | grep Mem | awk '{print$4}')
echo $memFree

memFreePercentage=$(echo $memFree / echo $memTotal * 100)
echo memFreePercentage