#! /usr/bin/bash

echo "Enter some text "

read input

spaghetiFunction()
{
  touch maniplulateme.txt
  echo "$@" >> maniplulateme.txt
}

functionStripAndPrint()
{
  rm hello.txt
  echo "$@" | tr -s '[:punct:]' '\n' >> hello.txt
}

functionStripAndPrint "$input"
spaghetiFunction "$input"

cat hello.txt