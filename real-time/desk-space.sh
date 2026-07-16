#!/bin/bash

THRESHOLD=10

df -h | grep -vE 'Filesystem|tmpfs|cdrom' | awk '{print $5 " " $1}' | while read output; do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//g')
    partition=$(echo $output | awk '{print $2}')
    if [ $usage -ge $THRESHOLD ]; then
        echo "ALERT: $partition is ${usage}% full"
    fi
done