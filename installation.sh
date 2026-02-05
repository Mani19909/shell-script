#!/bin/bash
USERID=$(id -u)

if [$USERID -ne 0]
then
echo "Please run this script wit root access."
exit 1 # manually exit if error comes
else
echo "you are super user"
fi

dnf install mysql -y 

if [$? -ne 0]
then
echo "Installation of mysql...Failure"
exit 1
else 
echo "Installation of mysql... success"
fi
dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"
