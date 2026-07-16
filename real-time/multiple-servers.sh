#!/bin/bash
SERVERS=("server1" "server2" "server3")
for SERVER in "${SERVERS[@]}" ; do
    echo "Checking $server...."
    ssh user@$server "uptime"
done