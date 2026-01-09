#!/bin/bash

# check if arg is number, when arg is number return positve or negative number 
evalNumber () {
  if [ $1 =~ ^[-]?[0-9]+$]; then
	  echo "is a number"
  else 
	  echo "is not a number"
  fi



}

for arg in "$@"; do
  evalNumber "$arg"
done
