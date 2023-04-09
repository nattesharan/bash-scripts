#!/bin/bash
echo "Hello World"

# Define a variable
MESSAGE="Hello World is working"
# print variable
echo "Message is: $MESSAGE"
# appending text to variable
echo "${MESSAGE}is text"

# combining variables
MESSAGE2=" fine"
echo "${MESSAGE}${MESSAGE2}"
# reassigning variables
MESSAGE="Hello world...."
echo $MESSAGE
echo "$MESSAGE happy world"
echo "${MESSAGE}${MESSAGE2}"
