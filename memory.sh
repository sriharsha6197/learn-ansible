free

memTotal=$(free | grep total | awk -F " " {print$1})