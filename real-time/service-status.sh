#!/bin/bash

#USERID=$(id -u)
SERVICE="nginx"
if ! pgrep -x "$SERVICE" > /dev/null; then
    echo "$SERVICE not running, starting it..."
    systemctl start $SERVICE
else
    echo "$SERVICE is running"
fi