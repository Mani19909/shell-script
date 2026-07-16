#!/bin/bash

echo "Memory Usage:"
free -m | awk 'NR==2{printf "%.2f%%\n", $3*100/$2}'
