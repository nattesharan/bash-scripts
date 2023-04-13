#!/bin/bash
# this scripts adds users
# the user will be prompted to enter the username and password

# ask username
read -p 'Enter Username: ' USERNAME
# ask real name of the user
read -p 'Enter the name of the person to whom the account should belong to: ' NAME
# Ask password
read -p 'Enter password: ' PASSWORD 

# add user
useradd -c "${NAME}" -m ${USERNAME}

# Set password for user
echo "${USERNAME}:${PASSWORD}" | chpasswd

# Force user to chnage password on first login
passwd -e $USERNAME

