#!/bin/bash

checkConstant () {
  
  prevVariable=$1

  for var in "$@";do
    if [ !  $var -eq $prevVariable ];then
      return
    fi
    prevVariable=$var
  done
  
  echo "constant"
  exit
}

checkForStrictlyIncreasing () {

  numbers=("$@")
  len=${#numbers[@]}	
  
  for (( i=1; i<$((len-1)); i++ )); do

    current=${numbers[i]}
    next=${numbers[i+1]}

    if [[ ! $current -lt $next  ]];then
      return
    fi
  done
  
  echo "strictly increasing"
  exit
}

checkForIncreasing () {

  numbers=("$@")
  len=${#numbers[@]}	
  
  for (( i=1; i<$((len-1)); i++ )); do

    current=${numbers[i]}
    next=${numbers[i+1]}

    if [[ ! $current -le $next ]];then
      return
    fi
  done
  
  echo "increasing"
  exit
}

checkForStrictlyDecreasing () {

  numbers=("$@")
  len=${#numbers[@]}	
  
  for (( i=1; i<$((len-1)); i++ )); do

    current=${numbers[i]}
    next=${numbers[i+1]}

    if [[ ! $current -gt $next  ]];then
      return
    fi
  done
  
  echo "strictly decreasing"
  exit
}

checkForDecreasing () {

  numbers=("$@")
  len=${#numbers[@]}	
  
  for (( i=1; i<$((len-1)); i++ )); do

    current=${numbers[i]}
    next=${numbers[i+1]}

    if [[ ! $current -ge $next  ]];then
      return
    fi
  done
  
  echo "decreasing"
  exit
}

# check if all input are numbers
for arg in "$@"; do
	if [[ ! "$arg" =~ ^[-]?[0-9]+$ ]];then
		echo "not a number"
		exit
	fi
done


# check for constant
checkConstant "$@"

# check for strictly increasing 
checkForStrictlyIncreasing "$@"


# check for increasing 
checkForIncreasing "$@"


# check for strictly decreasing
checkForStrictlyDecreasing "$@"


# check for decreasing
checkForDecreasing "$@"


echo "not monotonic"
