#!/bin/bash

#Print out a list of users on the system
if [ "$1" = "userlist" ]; then 
    users
#Print out the UID of the specified user
elif [ "$1" = "userinfo" ] && [ "$2" = "$2" ]; then
    if id -u $2 &> /dev/null; [ $? = "0" ]; then
        echo $(id -u $2)
        exit 0
    else
        echo "Invalid User" 2> stderr.txt
        cat stderr.txt
        rm stderr.txt
        exit 1
    fi
#Print out the UID of the current user
elif [ "$1" = "userinfo" ]; then
    echo $(id -u)
else
    exit 2
fi
