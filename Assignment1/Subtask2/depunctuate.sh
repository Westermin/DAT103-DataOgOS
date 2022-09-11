#! /usr/bin/sh

echo "Enter some text "

read input

functionStripAndPrint()
{
  echo "$@" | tr -d '[:punct:]'
}

functionStripAndPrint "$input"
