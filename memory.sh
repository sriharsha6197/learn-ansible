free
memTotal=$(free | grep "Mem" | awk -F "      " '{print$2}')

$memTotal