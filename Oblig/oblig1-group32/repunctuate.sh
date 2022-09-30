#!/bin/bash

#Vi flytter til temp dir
cd "$1"

#Vi oppretter en ny fil for reverse hashingen
touch reader.txt

echo The file you want to find

#Leser filen som hashe tilbake tegnsetting
read file
#Finner filen
find "$file"
#Finner hashen til punktene, og endrer de tilbake til tegnet
for hash in $(cat $file);
    do
        if [ $hash = 'beadba836315747fc95ae304452514b72fe122a6e345974638d70c4e8ebace6a' ]
        then
            echo ',' >> reader.txt
        elif [ $hash = 'eb4bd64f7014f7d42e9d358035802242741b974e8dfcd37c59f9c21ce29d781e' ]
        then
            echo '.' >> reader.txt
        elif [ $hash = '9d5244c50ced231a7bb23d76593f0bce8f8d3ff803dfe514176002739b6f75c1' ]
            then
                echo '|' >> reader.txt
        elif [ $hash = 'ce773b87709a04bbcb0ead74fea94b1f20fa4a4d185fc06a24a9bc703dd99613' ];
          then
              echo '?' >> reader.txt
        elif [ $hash = '7ddcfda184b55ee06b0c81e0ad136b1aa4a86daeb1078bcaeccc246eb2c8693b' ];
          then
              echo '!' >> reader.txt
        elif [ $hash = 'f3743a0a18e53d13922cc21a70d783d875a12560c22ff8d28bda5f5ca9fe05c3' ];
          then
            echo ':' >> reader.txt
        elif [ $hash = 'd8a957038679125d4840554fc43375697e662283121561afdefc2c3fbecaf729' ]
          then
            echo ';' >> reader.txt
        else
            echo $hash >> reader.txt
        fi
    done

# Vi bytter ut new lines med et mellomrom for å få alt på samme linje
cat reader.txt | tr '\n' ' '

# Sletter reader etter at cat

rm reader.txt