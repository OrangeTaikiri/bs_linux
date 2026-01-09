#!/bin/bash

evalNumber () {

notANumber=0

  if [[ "$1" =~ ^[+-]?[0-9]+$ ]]; then
	if [[ $1 -lt 0  ]];then
		echo "negativ"
	elif [[ $1 -gt 0 ]]; then
		echo "positive"
	else
		echo "zero"
	fi
  else
	  echo "is not a number"
	  notANumber=1
  fi
}

for arg in "$@"; do
  evalNumber "$arg"
done

exit $notANumber



