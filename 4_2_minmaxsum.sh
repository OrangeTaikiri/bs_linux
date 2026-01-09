#!/bin/bash



for value in "$@"; do
	if [[ ! $value =~ ^[-]?[0-9]+$ ]]; then
		echo "not a number $value"
		exit
	fi
done

minval=$1
maxval=$1
sum=0



for value in "$@"; do
	((sum += value))

	if [ $minval -gt $value ]; then
		minval=$value
	fi

	if [ $maxval -lt $value ]; then
		maxval=$value
	fi
done

echo "$minval $maxval $sum"




