#!/bin/bash

echo "Please enter username::"

read -s USERNAME # here USERNAME is variable
# "-s" indicates when you enter variable its not shown
echo "Please enter password::"

read -s PASSWORD

echo "username is: $USERNAME, Password is: $PASSWORD"