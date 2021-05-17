#!/bin/sh
IFS=$'\n'
source config.sh
readonly SAVEDIR=consumers/

for keyword in $(cat /Users/rahul.shukla/Desktop/search/keywords.txt)    
do
    echo "$keyword"
    find $CONSUMERS -name "*.php" \
    -o -name '*.js' \
    -o -name '*.ts'\
    | xargs grep -E " ${keyword} " > "${FOLDERLOCATION}${SAVEDIR}${keyword}.txt"
done