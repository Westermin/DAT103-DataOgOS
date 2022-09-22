#! /usr/bin/bash
#echo "Enter some text "

# Get a value:
cat ../Subtask2/cache.txt
file=hello.txt

declare -i LINE=1
file="../Subtask2/hello.txt"
cache=../Subtask2/cache.txt
rePunctuate() {
  declare -a a1
  declare -a a2
  declare -i pos=0
  { read -a a1; read -a a2; } < $cache

for i in "${a1[@]}"
    do
      x=${a2[pos]}
      echo "La til $x inn i pos $i"
      #cat $file | sed -E "${LINE}s/^.{$i}/&$x/" > ../Subtask2/hello.txt
      cat $file | sed -z -E "s/^.{$i}/&$x/" > ../Subtask2/hello.txt
      pos=pos+1
    done

}


arrayGet() {
    local array=$1 index=$2
    local i="${array}_$index"
    printf '%s' "${!i}"
}

rePunctuate "$input"

read input
}