free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}' | xargs)
memUsed=$(free | grep "Mem" | awk -F "      " '{print$4}' | xargs)

echo $memTotal
echo $memUsed