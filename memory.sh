free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}')
memUsed=$(free | grep "Mem" | awk -F "      " '{print$3}')

echo $memTotal
echo $memUsed