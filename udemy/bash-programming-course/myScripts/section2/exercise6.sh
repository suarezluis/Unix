#! /bin/bash

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file,
# a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

read -p "Please enter a filename: " FILE


if [ -f "$FILE" ]
then
    echo "$FILE is a regular file."
elif [ -d "$FILE" ]
then
    echo "$FILE is a directory."
else
    echo "$FILE is something other than a regular file or directory."
fi

ls -l $FILE