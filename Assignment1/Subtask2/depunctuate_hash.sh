#! /usr/bin/sh
#echo "Enter some text "

# Get a value:

file=hello.txt

declare -i LINE=1
declare -l CHAR='p'
getPos(){
  declare -a array
  declare -i pos=0
while read -n1 c; do
    #echo "$c"

  pos=pos+1
  if  [ "$c" = "," ] || [ "$c" = '.' ]
  then
    ##hashmap
      c=" "
      echo "fant en: $pos"

      array+=($pos)
  fi


  echo "$pos"
done < $file
echo hello.txt | tr -s '[:punct:]' ' ' >> hello.txt

for i in ${array[@]}
do
  echo "$i"

  cat hello.txt | sed -E "${LINE}s/^.{$i}/&$CHAR/" > output.txt
done

#awk -F: 'NR == 2 {print $2}' "hello.txt"

}


arrayGet() {
    local array=$1 index=$2
    local i="${array}_$index"
    printf '%s' "${!i}"
}
##spaghetiFunction()
#{
#  touch maniplulateme.txt
#  echo "$@" >> maniplulateme.txt
#}

#functionStripAndPrint()
#{
#  rm hello.txt
#  echo "$@" | tr -s '[:punct:]' '\n' >> hello.txt
#}

getPos "$input"

read input