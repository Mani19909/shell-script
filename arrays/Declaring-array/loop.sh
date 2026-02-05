#!/bin/bash
declare -A http_codes
http_codes=([200]="OK" [404]="Not Found" [500]="server Error")
for code in "${!http_codes[@]}"
do
echo "$code:${http_codes[$code]}"
done
# What this does
# ${!http_codes[@]} → gives all keys
# ${http_codes[$code]} → prints corresponding value