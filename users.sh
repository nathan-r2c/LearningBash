#!/bin/bash

#Print out a list of users on the system
if [ "$1" = "userlist" ]; then 
    echo $(users)
#Print out the UID of the specified user
elif [ "$1" = "userinfo" ] && [ "$2" = "$2" ]; then
    user_id="echo $(id -u $2)"
    if [ $? -eq 0 ]; then
        echo $(id -u $2)
    else
        echo "Invalid User"
        exit 1
    fi
#Print out the UID of the current user
elif [ "$1" = "userinfo" ]; then
    echo $(id -u)
else
    exit 2
fi
