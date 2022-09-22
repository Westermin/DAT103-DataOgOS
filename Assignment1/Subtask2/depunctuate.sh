#! /usr/bin/bash
file=hello.txt

getPos(){
declare -a a1
declare -a a2
declare -i pos=0
  while read -n1 c; do
      #echo "$c"
    if  [ "$c" = "," ]
      then
          c=" "
          echo "fant en: $pos"
          a1+=($pos)
          a2+=(",")

      elif [ "$c" = '.' ]
      then
        echo "fant en: $pos"
        a1+=($pos)
        a2+=(".")
    fi
    pos=pos+1
  done < $file

  { echo "${a1[*]}"; echo "${a2[*]}";} >cache.txt
}


dePunctuate() {
cat hello.txt | tr -d '[:punct:]' > hello.txt
}

read input
getPos "$input"
dePunctuate "$input"
