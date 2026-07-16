#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run this script with root access."
exit 1
else
echo "you are in super user."
fi

SERVICE="nginx"
if ! pgrep -x "$SERVICE" > /dev/null; then
    echo "$SERVICE not running, starting it..."
    systemctl start $SERVICE
else
    echo "$SERVICE is running"
fi