#!/bin/bash

if [ "$#" == "0" ]; then
  words=$(while read line
do
  echo $line
done)
else
  words="$@"
fi


echo ${words}

for word in ${words}
do
  echo $word
done
