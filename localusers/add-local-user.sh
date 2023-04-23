#!/bin/bash
if [[ $UID -ne 0 ]]
then
    echo "Only superuser can execute this script"
    exit 1
fi

read -p "Enter login: " LOGIN
read -p "Enter name: " NAME
read -p "Enter password: " PASSWORD

# create account
useradd -c "${NAME}" -m ${LOGIN}

if [[ ${?} -ne 0 ]]
then
    echo "THe account could not be created"
    exit 1
fi

# set the password
echo "${LOGIN}:${PASSWORD}" | chpasswd
if [[ ${?} -ne 0 ]]
then
    echo "Could not set password for account ${LOGIN}"
    exit 1
fi

passwd -e $LOGIN

# display username, password and host where the user was created
echo
echo "username: ${LOGIN}"
echo
echo "password: ${PASSWORD}"
echo
echo "hostname: ${HOSTNAME}"
exit 0

