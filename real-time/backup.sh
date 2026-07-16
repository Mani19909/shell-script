#!/bin/bash

SRC="/var/www/html"
DEST="/backup"
DATE=$(date +%F_%H-%M-%S)

tar -czf "$DEST/backup_$DATE.tar.gz" "$SRC"

find $DEST -type f -mtime +7 -delete