#!/bin/bash

echo "All variables: $@"
echo "number of variables passed: $#"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "process ID of last background command: $!"
