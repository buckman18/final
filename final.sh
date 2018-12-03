#!/bin/bash

# clear the screen
tput clear

# Move Cursor to screen location X, Y ( TOP LEFT IS 0,0
tput cup 3 15

# Set a forground color using ANSI escape
tput setaf 3
tput sgr0

tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0

tput cup 7 15
echo "1. find user"
tput cup 8 15

echo "2. add user"
tput cup 9 15
echo "3. delete user"

tput cup 10 15
echo "4. edit user"

# Set bold mode
tput bold
tput cup 12 15
read -p "Enter your choice [1-4]" choice

tput clear
tput sgr0
tput rc


echo "what is your first name?"
read   USER_NAME 
echo  "HELLO $USER_NAME"

echo "i will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"

echo "what is your birthdate?"
read  BIRTH_DATE

echo "Thank you, please enter your address"
read  ADDRESS

echo "Got it, now i just need your phone number"
read  PHONE_NUMBER

echo "Thank you, please make sure the following information is correct"
echo $USER_NAME >> ${USER_NAME}_file
echo $BIRTH_DATE >> ${USER_NAME}_file
echo $PHONE_NUMBER >> ${USER_NAME}_file
echo $ADDRESS >> ${USER_NAME}_file
cat  ${USER_NAME}_file





