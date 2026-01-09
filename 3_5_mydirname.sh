#!/bin/bash

# remove path from path
# -> /etc/zsh/zlogin
# <- /etc/zsh
dirname () {
  echo "${1##*/}"
}

for arg in "$@"; do
  dirname "$arg"
done
