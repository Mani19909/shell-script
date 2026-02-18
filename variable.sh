#!/bin/bash

echo "Ramesh:: Hello Suresh, How are you?"
echo "Suresh:: Hi Ramesh, I am fine. How are you?"
echo "Ramesh: I am fine tooo. how is your work?"
echo "Suresh: not bad. I am thinking to updrade to devops"

# repeated words
# if you want to change, you have to change it every where
# while changing accidently you may you change actual code
# so we can use variables

#declaring varibale
persion1="Ramesh"
persion2="Suresh"

#referring variable
echo "$persion1:: Hello $persion2, How are you?"
echo "$persion2:: Hi $persion1, I am fine. How are you?"
echo "$persion1: I am fine tooo. how is your work?"
echo "$persion2: not bad. I am thinking to updrade to devops"

#if you change variable value, it will be automatically reflected everywhere it is referred.