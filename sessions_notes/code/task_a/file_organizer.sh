#!/usr/bin/bash


###Error codes:
    #return 40 means error path not founded
    #retrun 50 means no valid input
###

###Global variables:
declare GIVENPATH=""
declare FILENAME=""
declare FILEEXTENSION=""
declare INPUTS=()


###Input
# one argumant: path --> $1


###Logic
#check if input is valid dir
function check_path_exist(){
    local GIVENPATH2=$1

    if [ -e "$GIVENPATH2" ]; then
        echo "1- Path("$GIVENPATH2")exist"
        # exit 0
    else
        echo "1- Path("$GIVENPATH2") not exist!!!!"
        # exit 1
    fi
}
#get filename and its FILEEXTENSION
function get_filename_extension () {
    local FILE1=$1
    FILENAME=$(basename "$FILE1")
    echo "2- $FILENAME"
    FILEEXTENSION="${FILENAME##*.}"
    echo "3- Extension: $FILEEXTENSION"
}

main(){
    #Get input from terminal
    echo "Enter 5 INPUTS: [files directory - file_type1 - file_type2 - file_type3 - file_type4]"
    echo -e "If user entered empty file_type no type will be created\n\n"
    # Loop to read 5 INPUTS
    for (( i=0; i<5; i++ ))
    do
        read -p "Input $((i+1)): " INPUTS
        INPUTS+=("$INPUTS")  # Append INPUTS to the array
    done

    echo "${INPUTS[1]}"
    echo "${INPUTS[2]}"
    echo "${INPUTS[3]}"
    echo "${INPUTS[4]}"
    echo "${INPUTS[5]}"

    GIVENPATH=${INPUTS[1]}
    #check if input is valid dir
    check_path_exist "$GIVENPATH"
    #loop on files in given directory:
    for file in $GIVENPATH/*; do
        if [ -f $file ]; then
            #get filename and FILEEXTENSION
            get_filename_extension "$file"
            for((i=2;i<6;i++)); do
                if [[ "${INPUTS[2]}" == "second-expression" ]]; then
                command ...
                fi
            done
            
            
                case "$FILEEXTENSION" in
                    txt)
                        #make dir for txt files:
                        mkdir -p "$GIVENPATH"/$FILEEXTENSION
                        #move file to txt folder
                        mv "$file" "$GIVENPATH/$FILEEXTENSION/"
                        ;;
                    pdf)
                        #make dir for pdf files:
                        mkdir -p "$GIVENPATH"/$FILEEXTENSION
                        #move file to pdf folder
                        mv "$file" "$GIVENPATH/$FILEEXTENSION/"
                        ;;
                    png)
                        #make dir for jpg files:
                        mkdir -p "$GIVENPATH"/$FILEEXTENSION
                        #move file to jpg folder
                        mv "$file" "$GIVENPATH/$FILEEXTENSION/"
                        ;;
                    *)
                        #make dir for hidden files:
                        mkdir -p "$GIVENPATH"/$FILEEXTENSION
                        #move file to hidden folder
                        mv "$file" "$GIVENPATH/$FILEEXTENSION/"
                        ;;
                esac
            fi
    done

}

#Run main function
main "$@"

