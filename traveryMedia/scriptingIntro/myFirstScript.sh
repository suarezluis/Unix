#! /bin/bash

# ECHO COMMAND
# echo This is my fist script

# VARIABLES
# Uppercase by convention
# Letters, numbers and underscores

#NAME="Luis"

#echo "My name is $NAME"

#USER INPUT

# read -p "Enter your name: " NAME

# echo "Hello $NAME nice to meet you"

# SIMPLE IF STATEMENT

# if [ "$NAME" = "Luis" ]
# then
#     echo "Hi Luis is goot to see you"
# elif [ "$NAME" = "Pepe" ]
# then
#     echo "PEPITO!!!!!!!!"
# else
#     echo "You are not Luis"
# fi

# COMPARISON

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

# NUM1=5
# NUM2=3

# if [ $NUM1 -gt $NUM2 ]
# then
#     echo "$NUM1 is greater than $NUM2"
# elif [ $NUM1 -lt  $NUM2 ]
# then
#     echo "$NUM2 is greater than $NUM1"
# else
#     echo "$NUM1 and $NUM2 are equal"
# fi

# FILE CONDITIONS

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#     echo "$FILE exists"
# else
#     echo "$FILE does NOT exist"
# fi

#CASE STATEMENTS

# read -p "Are you 21 or over Y/N " ANSWER
# case $ANSWER in
#     #CASE
#     [yY] | [yY][eE][sS])
#         echo "You can have a beer :)"
#     ;;
#     #CASE
#     [nN]|[nN][oO])
#         echo "Sorry, No drinking :o "
#     ;;
#     #DEFAULT
#     *)
#         echo "Please enter y/yes or n/no"
# esac

# SIMPLE FOR LOOP

# NAMES="Luis Pepe Dussan"
# for NAME in $NAMES
# do
#     echo "Hello $NAME"
# done

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
# do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

#WHILE LOOP - READ THROUG A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
# do
#     echo "$LINE: $CURRENT_LINE"
#     LINE=$((LINE + 1))
# done < "./new-1.txt"

#FUNCTION

# sayHello () {
#     echo Hello World
# }

# sayHello

# greet() {
#     echo "Hello $1 and I am $2"
# }

# greet "Luis" "38"

#CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"