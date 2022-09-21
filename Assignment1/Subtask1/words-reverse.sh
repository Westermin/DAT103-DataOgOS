#!/bin/bash

mktemp -d

read depunctuation.sh


#read s
#strlen=${#s}
#for (( i=$strlen-1; i>=0; i-- ));
#do
#    revstr=$revstr${s:$i:1}
#done
#echo "Original String : $s"
#echo "Reversed String : $revstr"

#read test

function cleanup {
  rm -rf "$WORK_DIR"
  echo "Deleted temp working directory $WORK_DIR"
}

