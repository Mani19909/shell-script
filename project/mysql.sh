#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "please enter DB password:"
read -s mysql_root_password

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2....$R FAILURE $N"
    else
    echo -e "$2....$G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then
echo "Please run this script with root access."
exit 1
else
echo "you are in super user."
fi

dnf install mysql-server -y &>>LOGFILE
VALIDATE $? "Installing MYSQL server"

systemctl enable mysqld &>>LOGFILE
VALIDATE $? "Enabling MYSQL Server"

systemctl start mysqld &>>$LOGFILE
VALIDATE $? "Starting MYSQL Server"

# mysql_security_installtion --set-root-pass ExpenseApp@1 &>>$LOGFILE
# VALIDATE $? "setting up root password"

# Below code will be useful ofr idempotent nature
mysql -h db.daws78s.online -uroot -p${mysql_root_password} -e 'show databases;' &>>$LOGFILE
if [ $? -ne 0 ]
then 
mysql_secure_installation --set-root-pass ${mysql_root_password} &>>$LOGFILE
VALIDATE $? "MySQL Root password setup"
else
echo -e "MySQL Root password is already setup..$Y SKIPPING $N"
fi
