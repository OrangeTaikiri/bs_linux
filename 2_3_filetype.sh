#!/bin/bash

filetype () {
  case $1 in
    *.txt)
      echo "Text";;
    *.html)
      echo "Hypertext";;
    *.png|*.jpg|*.gif)
      echo "Image";;
    *.js|*.mjs)
      echo "JavaScript";;
    *.css)
      echo "Stylesheet";;
  *)
      echo "Unknown"
  esac
}

if [ $# -lt 1 ]; then
  exit
fi


for value in "$@"; do
  filetype "$value"
done

