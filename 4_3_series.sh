#!/bin/bash

prtSeries () {
	echo ""
}

# check for 3 parameter 
if [ $# -ne 3 ];then
	echo "3 Parameters expected"
	exit 1
fi

# check for unsupported chars
for arg in "$@"; do

	if [[ ! "$arg" =~ ^[-]?[0-9]+$ ]];then
		echo "$arg is not a number"
		exit 1
	fi
done

counter=$1
limit=$2
step=$3


until [ "$counter" -ge "$limit" ]
do
	echo "$counter $((counter*counter)) $((counter*counter*counter))" 
	(( counter += step ))
done


	




