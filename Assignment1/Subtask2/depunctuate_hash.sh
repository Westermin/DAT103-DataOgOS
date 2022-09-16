#! /usr/bin/sh

echo "Enter some text "

read input

declare -A animals
animals=( [","]="" ["."]="")
declare -A animals=( ["moo"]="cow" ["woof"]="dog")
animals_moo=cow; sound=moo; i="animals_$sound"; echo "${!i}"
cow
$ sound=moo; animal=cow; declare "animals_$sound=$animal"; echo "$animals_moo"
cow
# Set a value:
declare "array_$index=$value"

$ sound=moo
$ animal=cow
$ declare "animals_$sound=$animal"
$ arrayGet animals "$sound"
cow

# Get a value:
arrayGet() {
    local array=$1 index=$2
    local i="${array}_$index"
    printf '%s' "${!i}"
}
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
