#!/bin/bash


##
#   Control flow:
#               1. if .. else
#               2. loops.
##

# if 
declare -i NUMB1=1000
declare -i NUMB2=2000

if (( NUMB1 != NUMB2 )); then
    echo "not equal"
fi

if [ "$(command -v command)" ]; then
    echo "command \"command\" exists on system"
fi

if [ -x "/path/to/file" ]; then
    echo "file \"/path/to/file\" is executable"
fi

if [ -f "/path/to/file" ]; then
    echo "File \"/path/to/file\" exists"
fi

# loops.
# 1. inf. loop

declare -i ITERATION
ITERATION=0

#while false; do
    #echo "$ITERATION"
    #ITERATION=$((ITERATION + 1))
    #sleep 5
#done


while [ -f "./test.txt" ]; do
    echo "File is exists."
    sleep 5
done

# 2. range loop.

for((i=0;i<10;i++)); do
    echo "${i}"
done



# loop files (directory).
for fileName in /home/hazem/EmbeddedLinux/scripts/*".cpp"; do
    echo "$fileName"
done



