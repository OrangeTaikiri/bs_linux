#!/bin/bash

encode () {
  repPerc=${1//%/%25}
  repBlank=${repPerc// /%20}
  echo "$repBlank"
}

for arg in "$@"; do
	encode "$arg"
done
