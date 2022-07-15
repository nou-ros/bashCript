#!/usr/bin/bash

# this line is a comment and will not execute
### this line is another comment and will not execute

get_statistics(){
        echo "This function is placeholder for statistics"
}

script_name=$0
command_line_args1=$1
command_line_args2=$2

get_statistics
echo "Script name is $script_name"
echo "Script name is ${script_name}-brace use"
echo "Script name without leading path `basename $0`"
echo "First args = ${command_line_args1}"
echo "Second args = ${command_line_args2}"
echo "Total number of arugments $#"
echo "Total arguments are: $@"
echo "Total arguments togetther is: $*"


Num=23
if [[ $Num -eq 23 ]]
then
        echo "Match"
fi

## This tells what is the exit status from shell
## It need not be zero. But zero usualy means success
## Non-zero are errors.

exit 0
