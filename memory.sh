free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}')
memUsed=$(free | grep "used" | awk -F "      " '{print$4}')

echo $memTotal
echo $memUsed