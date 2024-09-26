#!/bin/bash
# Script to back up the documents directory

BACKUP_DIR="/home/user/backup"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/documents_backup_$(date +%Y%m%d).tar.gz" /home/user/documents

echo "Backup of documents completed."
