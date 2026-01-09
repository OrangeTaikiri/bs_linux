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


if [[ $1 -eq 1  ]]; then
    echo "Sehr gut"	
fi

if [[ $1 -eq 2  ]]; then
    echo "Gut"	
fi

if [[ $1 -eq 3  ]]; then
    echo "Befriedigend"	
fi

if [[ $1 -eq 4  ]]; then
    echo "Genügend"	
fi

if [[ $1 -eq 5  ]]; then
    echo "Nicht genügend"	
fi


