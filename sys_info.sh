#!/bin/bash
# Script to generate system information report

UPTIME=$(uptime -p)
MEMORY=$(free -h)
CPU_LOAD=$(top -bn1 | grep "load average" | awk '{print $10}')
DISK_USAGE=$(df -h /)
RUNNING_PROCESSES=$(ps -e | wc -l)

cat <<EOL > /home/user/documents/system_report.txt
System Uptime: $UPTIME
Memory Usage: 
$MEMORY
CPU Load: $CPU_LOAD
Disk Usage: 
$DISK_USAGE
Running Processes: $RUNNING_PROCESSES
EOL

echo "System report generated in /home/user/documents/system_report.txt."
