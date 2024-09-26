#!/bin/bash
# Script to monitor and restart apache2 process

if ! pgrep -x "apache2" > /dev/null; then
  echo "$(date): apache2 is not running. Starting process." >> /var/log/process_monitor.log
  service apache2 start
else
  echo "apache2 is running."
fi
