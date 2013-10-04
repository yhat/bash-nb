#!/bin/bash

category="$1"

if [ ! -d "data/${category}" ]
then
  echo "making directory..."
  mkdir "data/${category}"
fi

file="$2"
if [ -z $file ]; then
  file=`while read line
            do
              echo $line
            done`
else
  file=$(cat ${file})
fi

for url in ${file}
do
  filename=$(echo ${url} | sed 's/http[:][/][/]//g' | sed 's/[/]//g')
  curl ${url} | htmlToText "body" \
    > "data/${category}/${filename}.txt"
done
