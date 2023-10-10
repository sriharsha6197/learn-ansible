free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}' | xargs)
memUsed=$(free | grep "Mem" | awk -F " " '{print$4}')

echo $memTotal
echo $memUsed