#!/bin/bash

# Display the uid and username of the user executing the script
# Display if the user is vagrant user or not

# Display the UID
echo "UID is $UID"

# Only display if the uid doesnt match 1000
UID_TO_CHECK=1000
if [[ $UID -ne $UID_TO_CHECK ]]
then
    echo "Your UID does'nt match $UID_TO_CHECK"
    exit 1
fi
# Display the username
# test if the command succeeded
USERNAME=$(id -un)
if [[ "${?}" -ne 0 ]]
then
    echo "id command did not succeed"
    exit 1
fi
echo "Your username is $USERNAME"
# Use string test conditional
USERNAME_TO_CHECK='vagrant'
if [[ $USERNAME=$USERNAME_TO_CHECK ]]
then
    echo "Your username matches $USERNAME_TO_CHECK"
fi
# test not equal for string

if [[ $USERNAME != $USERNAME_TO_CHECK ]]
then
    echo "Your username doesnt match $USERNAME_TO_CHECK"
    exit 1
fi

exit 0