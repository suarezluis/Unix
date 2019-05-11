#! /bin/bash

# 3. INPUT / OUTPUT
#     Write an I/O script using Linux shell language to read from a data file and write to an
#     Output file
#     The script must read until EOF and compute the square of all the numbers read.
#     The result of this computation must be stored in the output file
#     Please turn in the input file, output file and the source code.

# Test data	/2 4 6 8 10 12 14 16 18/
records=0

# Clear output.txt
echo "" > output.txt

echo -e "\nReading data from input.txt...\n"

DATA=`cat input.txt`

for number in $DATA; do
    echo "Got $number, squared is $((number*number)), writing to output.txt"
    echo $((number*number)) >> output.txt
    records=$((records+1))
done

echo -e "\nFinished, $records added to output.txt\n"