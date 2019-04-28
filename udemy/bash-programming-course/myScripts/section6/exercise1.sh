#! /bin/bash

# Write a shell script that renames all files in the current directory that end in ".jpg"
# to begin with today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in the current directory
# and today was October 31, 2016 it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".

# Hint: Look at the format options to the date command.

# For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the current directory.
# (Hint: Man bash and read the section on the nullglob option.)

date=$(date +"%Y%m%d")



for fileName in $(ls *.jpg)
do
    mv "$fileName" "${date}_${fileName}"
done