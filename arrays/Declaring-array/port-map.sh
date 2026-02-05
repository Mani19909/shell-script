#!/bin/bash
# Below is a clean example that shows how DevOps teams use associative arrays to map service names to ports
declare -A services=(
    [nginx]="80"
    [mysql]="3306"
    [redis]="6379"
)
for svc in "${!services[@]}"
do
echo "$svc is running on port ${services[$svc]}"
done