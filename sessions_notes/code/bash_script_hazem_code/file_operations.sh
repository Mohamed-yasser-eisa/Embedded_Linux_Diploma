#!/bin/bash

function extractFileName () {

    declare FILEPATH=$1

    if [ ! -f "$FILEPATH" ]; then
        echo "File $FILEPATH not exists."
        exit 1
    fi
    FILENAME=$(basename "$FILEPATH")
    echo "$FILENAME"
}


function isExecutable () {

    declare FILEPATH=$1
    declare -i isEx=0

    if [ -x "$FILEPATH" ]; then
       isEx=1
    fi
    echo $isEx
}

function extractNumberOfLines () {

    declare FILEPATH=$1    
    declare -i NumberOfLines=0

    if [ ! -f "$FILEPATH" ]; then
       echo "File not exists."
       exit 1
    fi

    while IFS= read -r line; do
        NumberOfLines=$((NumberOfLines + 1))
    done < "$FILEPATH"
    echo "$NumberOfLines"
    return 1
}