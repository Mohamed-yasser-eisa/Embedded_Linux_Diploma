#!/bin/bash





# 1. Inputs:

###
# a. shell ---> shell variables ( Postional paramters ).
# b. file  ---> location (rootfile-system).
# c. Process (Parent Process) ---> Enviroment variable.
###

    # a. shell ---> shell variables ( Postional paramters ).
        # $# ----> define number of arguments (pass).
        echo $#
        echo "$0"
        echo "$1"
        declare FILENAME=$1

    # b. file  ---> location (rootfile-system).
        declare FILEPATH="/home/hazem/EmbeddedLinux/scripts/testing.txt"
    
    # c. Process (Parent Process) ---> Enviroment variable. 
        declare input=$ENV_NAME
    # d. interactive
        # read FILENAME

# -----------------------------------------------------------------------------------------------

# 2. Operations:

###
#   1. Math             -->  operations.
#   2. string           -->  operations.
#   3. file / diretory  -->  operations.
###

# 1. Math             -->  operations.
declare -i NUM1=1000
declare -i NUM2=2000
declare -i RESULT=$(($NUM1 + $NUM2))

echo "1. Arth result = $RESULT" 

# ---------------------------------------------------------------------------------------
# 2. string             -->  operations.
declare DATA="   Hello world  "

declare TRIMMED=$(echo -e "${DATA}" | tr -d '[:space:]')

echo "$TRIMMED" // reading operation.

# ---------------------------------------------------------------------------------------

# 3. files/directories

while IFS= read -r line; do
    echo "$line"
done < "$FILENAME"

# ---------------------------------------------------------------------------------------




# 3. Output : (Result):
declare RESULT=$TRIMMED

# 1. file  ---> redirect result to file.
echo "3. overwriting to ./test.txt file."
echo "$RESULT" > "./test.txt" # overwrite.




# 2. STOUT ---> standard output.

echo "4. STDOUT: $RESULT"

# printf ---> for formating.




# 4. Exist Status.
echo "5. Exist Status value"
exit 0