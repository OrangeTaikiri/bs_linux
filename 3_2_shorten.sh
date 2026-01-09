#!/bin/bash

if [ $# -lt 1 ];then
  echo "arguments required"
  exit
fi

for arg in "$@"; do
  if [ "${#arg}" -gt 12 ];then
	  echo "${arg:0:9}..."
  else
	  echo "$arg"
  fi
done

