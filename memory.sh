free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}')
echo $memTotal

free | grep "Mem" | awk -F "      "  '{print$3}'