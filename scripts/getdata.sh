#!/bin/bash
PATH=$PATH:/Users/glamp/repos/yhat/opensource/bash-nb/scripts

dino_wiki=http://en.wikipedia.org/wiki/List_of_North_American_dinosaurs

DINO_URLS=$(curl $dino_wiki | grep -E -o 'href="/wiki/[A-Z][a-z]+"' | awk -F "\"" '{print "http://en.wikipedia.org"$2}' | sort | uniq)
category="dinosaurs"
for url in $(echo ${DINO_URLS})
do
    dino=$(echo $url | awk -F "/" '{print $5}')
    echo $url
    #curl $url | htmlToText > "data/${category}/${dino}.txt"
    #sleep 2
done

CRYPT_URLS=$(python scripts/getcrypts.py | grep -E '/wiki/' | sort | uniq)
category="cryptids"
for url in $(echo ${CRYPT_URLS})
do
    dino=$(echo $url | awk -F "/" '{print $5}')
    echo $url
    curl $url | htmlToText > "data/${category}/${dino}.txt"
    sleep 2
done

