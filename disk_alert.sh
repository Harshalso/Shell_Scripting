#!/bin/bash
# Script to send an email alert if disk usage exceeds 80%

THRESHOLD=80
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD%. Sending alert email."
  echo "Disk usage is at $USAGE%" | mail -s "Disk Usage Alert" admin@example.com
else
  echo "Disk usage is within limits."
fi
