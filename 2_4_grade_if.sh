#!/bin/bash

# exit if no argument is given
# prefer early exit to spare compute time
if [ $# -eq 0 ]; then
  echo "argument missing"
  exit 1
elif [[ $1 -lt 1 || $1 -gt 5 ]]; then
  echo "Nicht zulässig"
  exit 1
fi


case $1 in 
  1)
    echo "Sehr gut";;
  2)
    echo "Gut";;
  3)
    echo "Befriedigend";;	
  4)
    echo "Genügend";;
  5)
    echo "Nicht genügend";;
esac


