#!/bin/bash

echo "=========================================="
echo "          SYSTEM HEALTH REPORT            "
echo "=========================================="
echo "Date & Time : $(date)"
echo "------------------------------------------"

echo "Memory Usage:"
free -m | awk 'NR==2{printf "   Used: %dMB / Total: %dMB (%.2f%%)\n", $3,$2,$3/$2*100}'

echo "------------------------------------------"
echo "Disk Space Usage:"
df -h / | awk 'NR==2{printf "   Used: %s / Total: %s (%s)\n", $3,$2,$5}'

echo "=========================================="
