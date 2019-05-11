#! /bin/bash

# 4. Write an array processing program using a Linux shell programming language to perform the following .

# Load array X of 20 numbers from an input file  X.
# Load array Y of 20 numbers from an input file Y.

# Compute array Z by multiply Xi  * Yi then compute the square root
# of this computation.

# Write to Array X,Y Z

# Also submit file X and File Y,  source code and the RUN.

# Function to calculate the swuare root of a number
sqrt(){
    echo "$1" | awk '{printf sqrt($1)}'
}

records=0

x=`cat x.txt`
y=`cat y.txt`

# Clear z.txt
echo "" > z.txt

# Create array X
counter=0
for number in $x
do
    xArray[$counter]=$number
    counter=$((counter+1))
done

# Create array Y
counter=0
for number in $y
do
    yArray[$counter]=$number
    counter=$((counter+1))
done

# Create array XY
for ((i=0; i<${#xArray[@]};i++))
do
    xyArray[$i]="$(( ${xArray[i]} * ${yArray[i]} ))"
    
done

# Create array Z SQRT(XY)
for ((i=0; i<${#xArray[@]};i++))
do
    zArray[$i]="$(sqrt ${xyArray[i]})"
    
done

# Save results in z.txt
arrayLength=${#xArray[@]}
for ((i=0; i<${#xArray[@]};i++))
do
    echo "X: ${xArray[i]} Y: ${yArray[i]} X*Y: ${xyArray[i]} √(X*Y)= ${zArray[i]}" >> z.txt
    
done

# Also display results in screen

echo -e "\nResults:"

cat z.txt

echo -e "\nsaved in z.txt\n"