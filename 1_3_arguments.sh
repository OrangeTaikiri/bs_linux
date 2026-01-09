#!/bin/bash


echo "Number of arguments: $#"

if [ $# -ne 0 ]; then
  for name in $@; do
    echo "* $name"	
  done
fi



