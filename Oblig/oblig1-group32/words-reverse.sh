#!/bin/bash
#Med bypass for brukeren mulighet til å ta inn input for så å terminere scrpitet
if [ "$1" = '--bypass' ];
    then
        echo Enter the text you want to hash

        read text

        echo $text

        exit 1
    fi
#Lager en midlertidig mappe
temp_dir=$(mktemp -d)
#Kjører depunct scriptet
bash depunctuate.sh "$temp_dir"
#Sletter midlertidig dir
rm -r "$temp_dir"

echo "Deleted temp working directory $temp_dir"

read input