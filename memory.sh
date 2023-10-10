free

memTotal=$(free | grep Mem | awk '{print$2}')
echo $memTotal

memUsed=$(free | grep Mem | awk '{print$3}')
echo $memUsed

memFree=$(free | grep Mem | awk '{print$4}')
echo $memFree

freePercentage=$(echo "scale=2;$memFree / $memTotal * 100 " | bc -l)
echo $freePercentage

if [ $freePercentage -le 50 ];
then
 echo "\e[31mRed\e[0m"
elif [ $freePercentage -le 70 ];
then
 echo "\e[33mYellow\e[0m"
else
 echo "\e[31mGreen\e[0m"
fi