#!/bin/bash
# check multiple services
services=("nginx" "docker" "ssh")
for s in "${services[@]}"
do 
if systemctl is-active --quiet "$s"; then
echo "$s is running"
else 
echo "$s is not running"
fi
done

