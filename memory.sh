free

memTotal=$(free | grep Mem | awk '{print$2}')
echo $memTotal

memUsed=$(free | grep Mem | awk '{print$3}')
echo $memUsed

memFree=$(free | grep Mem | awk '{print$4}')
echo $memFree

freePercentage=$(echo "scale=2;$memFree / $memTotal * 100 " | bc -l | awk -F "." '{print$1}')
echo $freePercentage

if [ $freePercentage -le 50 ]; then
 echo -e "\e[31mRed\e[0m"
elif [ $freePercentage -le 70 ]; then
 echo -e "\e[33mYellow\e[0m"
else
 echo -e "\e[32mGreen\e[0m"
fi