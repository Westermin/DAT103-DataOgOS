#! /usr/bin/bash
#echo "Enter some text "

# Get a value:

file=hello.txt

getPos(){
  declare -a a1
  declare -a a2
  declare -i pos=0
while read -n1 c; do
    #echo "$c"
  if  [ "$c" = "," ]
  then
    ##hashmap
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

  echo "$pos"
done < $file
{ echo "${a1[*]}"; echo "${a2[*]}";} >cache.txt


}


dePunctuate() {
cat hello.txt | tr -d '[:punct:]' > hello.txt
}


getPos "$input"
dePunctuate "$input"
read input