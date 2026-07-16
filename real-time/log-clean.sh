#!/bin/bash

LOG_DIR="/var/log/my_app"

find $LOG_DIR -name "*.log" -mtime +30 -exec rm -f {} \;