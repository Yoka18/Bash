#!/bin/bash

# Sonsuz döngü içinde sistem bilgilerini güncelleyerek ekranda gösterir
while true; do
    clear
    echo "Sistem Paneli"
    echo "=============="
    echo "CPU Kullanımı:"
    top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'
    echo "---"
    echo "Hafıza Kullanımı:"
    free -m | awk 'NR==2{printf "%.2f%%\t\t\n", $3*100/$2 }'
    echo "---"
    echo "Disk Kullanımı:"
    df -h | awk '$NF=="/"{printf "%s\t\t\n", $5}'
    echo "---"
    echo "Sistem Yükü:"
    uptime
    echo "=============="
    sleep 5 # 5 saniye bekler
done
