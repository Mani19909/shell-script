#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then 
echo "given number $NUMBER is greater than 10"
else
echo "given number $NUMBER is less than 10"
fi
# -gt = greater than , -lt = less than,-eq = equal  
# -ge = greater than or equal to , -le lessthan or equal to