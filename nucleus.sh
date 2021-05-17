#!/bin/sh
IFS=$'\n'
source config.sh
readonly SAVEDIR=nucleus/

for keyword in $(cat /Users/rahul.shukla/Desktop/search/keywords.txt)    
do
    echo "$keyword"
    find $NUCLEUS -name "*.js" \
    -o -name '*.ts' \
    -o -name '*.sh'\
    -o -name '*.env'\
 | xargs grep -E " ${keyword} " > "${FOLDERLOCATION}${SAVEDIR}${keyword}.txt"
done