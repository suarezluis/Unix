#! /bin/bash

# Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument.
# Next have the function display the name of the directory followed by a colon.
# Finally, display the number of files to the screen on the next line. Call the function three times.
# First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

function file_count() {
    local FOLDER=$1
    echo "${FOLDER}:"
    
    
    local file_count=$(ls $FOLDER | wc -l)
    
    echo "$file_count"
}

file_count "/etc"
file_count "/var"
file_count "/usr/bin"