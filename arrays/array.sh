#!/bin/bash
fruits=("apply" "banana" "mango")

echo ${fruits[0]}
echo ${fruits[2]}
echo ${fruits[@]}
# @ means "all items inside the array"
echo ${#fruits[@]}
# "#=length" so it counts how many values exist.
fruits+=("orange") 
# + means append , add 'orange' at the end
fruits[1]="kiwi"
