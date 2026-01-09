#!/bin/bash

normailze () {
  # lower any letter
  lowerCase=${1,,}
  # only upper Firstletter
  firsLetterUpper=${lowerCase^} 
  echo "$firsLetterUpper"
}

for arg in "$@"; do
  normailze "$arg"
done
