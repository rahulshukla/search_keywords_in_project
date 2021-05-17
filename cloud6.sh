#!/bin/sh
IFS=$'\n'
source config.sh
readonly SAVEDIR=cloud6/
# get all the extension using below command and add the extension which is required
# find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u   
for keyword in $(cat /Users/rahul.shukla/Desktop/search/keywords.txt)    
do
    echo "$keyword"
    find $CLOUD6 -name "*.php" \
    -o -name '*.js' \
    -o -name '*.ini'\
    -o -name '*.sql'\
    -o -name '*.ts' \
    -o -name '*.handler' \
    -o -name '*.theme' \
    -o -name '*.view' \
    -o -name '*.yml' \
    -o -name '*.sh' \
    -o -name '*.pem' \
    -o -name '*.phar' \
    -o -name '*.php_cs' \
    -o -name '*.phps' \
    -o -name '*.phpt' \
    -o -name '*.phtml' \
    -o -name '*.patch' \
    -o -name '*.proc' \
    -o -name '*.profile' \
    -o -name '*.script' \
    -o -name '*.xml' \
    -o -name '*.cnf' \
    -o -name '*.crt' \
    -o -name '*.cscfg' \
    -o -name '*.csdef' \
| xargs grep -E " ${keyword} " > "${FOLDERLOCATION}${SAVEDIR}${keyword}.txt"
done