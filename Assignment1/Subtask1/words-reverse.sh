#!/bin/bash

tmp_dir=$(mktemp -d -t ci-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXXXX)
 
echo $tmp_dir

dep=sh depunctuation.sh temp_dir

rep=sh repunctuate.sh dep

echo $rep 

#read s
#strlen=${#s}
#for (( i=$strlen-1; i>=0; i-- ));
#do
#    revstr=$revstr${s:$i:1}
#done
#echo "Original String : $s"
#echo "Reversed String : $revstr"
#read test

rm -rf "$temp_dir"
echo "Deleted temp working directory $temp_dir"
