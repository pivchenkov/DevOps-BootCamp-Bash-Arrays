#!/bin/bash

# Place your code here
i=0

if [[ $1 -eq 1 ]]
then
    folder_word="folder"
else
    folder_word="folders"
fi

echo -n "$1 $folder_word created: "

for letter in {a..z}
do
    if [[ i -eq $1 ]]
    then
        break
    else

        i=$((i+1))
    fi

    mkdir "folder_$letter"
    echo -n "folder_$letter"
    if [[ i -lt $1 ]]
    then
        echo -n ", "
    else
        echo
    fi
done
