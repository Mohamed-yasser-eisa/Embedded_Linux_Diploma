#!/usr/bin/bash


# Function check if path exist?
# This function call must be followed with path to check:
function check_next_path_exist(){
    local GIVEN_PATH=$1

    if [ -e "$GIVEN_PATH" ]; then
        echo "Path("$GIVEN_PATH")exist"
        # exit 0
    else
        echo "Path("$GIVEN_PATH") not exist!!!!"
        # exit 1
    fi
}

# count number of files if folder:
declare -i FILE_COUNTER=0

function count_files_in_path(){
    local GIVEN_PATH=$1

    #search in current directory for files:
    for file in $GIVEN_PATH/*; do
        if [ -f $file ]; then
            echo "File ("$file") is founded!"
            FILE_COUNTER=$((FILE_COUNTER + 1))
        fi
    done

    #output result:
    echo "==============================================================================="
    echo "Number of files = "$FILE_COUNTER" in this directory ("$GIVEN_PATH")"
    echo "==============================================================================="
    #return status OK:

    # exit 0
}

