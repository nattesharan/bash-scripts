#!/bin/bash
# This script displays the ID and username of the user executing it
# This script displays if the user executing it is root user

# Display the UID
echo "UID is $UID"

# Display username
# USER_NAME=`id -un`
USER_NAME=$(id -un)
echo "USERNAME is $USER_NAME"
# Display if the user is root user or not
if [[ $UID -eq 0 ]]
then
    echo "Root user"
else
    echo "Not root user"
fi
