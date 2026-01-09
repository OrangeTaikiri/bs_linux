#!/bin/bash

# remove path from path
# -> /etc/zsh/zlogin
# <- zlogin
basename () {
  echo "${1%/*}"
}

for arg in "$@"; do
  basename "$arg"
done
