#!/bin/bash
# Script to back up .txt files in a specified directory

if [ -z "$1" ]; then
  echo "Please provide a directory."
  exit 1
fi

BACKUP_DIR="backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

find "$1" -type f -name "*.txt" -exec cp {} "$BACKUP_DIR" \;

echo "Backup of .txt files completed. Backup stored in $BACKUP_DIR."

