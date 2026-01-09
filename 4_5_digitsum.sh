#!/bin/bash

checkConstant () {
	echo ""
}


# check if all input are numbers
for arg in "$@"; do
	if [[ ! "$arg" =~ ^[-]?[0-9]+$ ]];then
		echo "not a number"
		exit
	fi
done



