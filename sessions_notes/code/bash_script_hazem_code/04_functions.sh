#!/bin/bash



# --------------------------------------- Functions ----------------------------------------
# Operations:
    # 1. declare function.
        # a. create Inputs 
        # b. operations.
        # c. return result.
    # 2. call function.
    # 3. source functions


function readFile () {
    
    echo "$1" # arguments are accessible through $1, $2,...
    declare FILENAME=$1

    while IFS= read -r line; do
        echo "$line"
    done < "$FILENAME"
    
}


# Calling ..
echo "Script Name: $0"

readFile "$1" # script scope.

# get function result.
echo $?


