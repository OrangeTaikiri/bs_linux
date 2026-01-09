#!/bin/bash



if [ $# -eq 0 ]; then
  echo "Hello World!"
else 
  for name in $@; do
    echo "Hello $name!"	
  done
fi





