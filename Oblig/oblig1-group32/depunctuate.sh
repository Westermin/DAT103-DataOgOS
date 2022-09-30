#!/bin/bash
touch lookups.txt

echo Enter the text you want to hash

#Tar standard input
read text

#Oppretter en midlertidig fil til å lagre inputen i
touch tempfile.txt

echo "$text" > tempfile.txt

#For å få tegn og ord på egne linjer i temp filen
#Ble gjort på den harde måten da [:punct:] gav mye problemer
sed -i s/' '/'\n'/g tempfile.txt
sed -i 's/\./\n./g' tempfile.txt
sed -i s/'|'/'\n|'/g tempfile.txt
sed -i s/','/'\n,'/g tempfile.txt
sed -i s/'!'/'\n!'/g tempfile.txt
sed -i s/'?'/'\n?'/g tempfile.txt
sed -i s/':'/'\n:'/g tempfile.txt
sed -i 's/\;/\n;/g' tempfile.txt

#Vi søker gjennom temp filen etter tegn å hashe
for word in $(cat tempfile.txt)
    do
       if [[ $word =~ [\,\.\|\!\?\:\;\ ]+ ]];
        then
#         if the word in $text contains a punctuation we want to split it, hash it, and echo it on a new line
          echo $word | sha256sum | head -c 64 | paste -d " "
        else
            echo $word
        fi
    done > lookups.txt

#Vi flytter hash.txt til temp dir
mv lookups.txt "$1"/lookups.txt

#cater innholder i hash
cat "$1"/lookups.txt

#Vi sletter temp filen
rm tempfile.txt

#Vi kjører repunct
bash repunctuate.sh "$1"