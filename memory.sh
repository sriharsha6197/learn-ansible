free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}')
memUsed=$(free | grep "Mem")

echo $memTotal
echo $memUsed