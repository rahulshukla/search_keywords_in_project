#!/bin/sh
IFS=$'\n'
source config.sh
readonly SAVEDIR=xenia/

for keyword in $(cat /Users/rahul.shukla/Desktop/search/keywords.txt)    
do
    echo "$keyword"
    find $XENIA -name "*.php" \
    -o -name '*.js' \
    -o -name '*.ini'\
    -o -name '*.inc'\
    -o -name '*.sql'\
    -o -name '*.ts' \
    -o -name '*.handler' \
    -o -name '*.theme' \
    -o -name '*.view' \
    -o -name '*.yml' \
    -o -name '*.yaml' \
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
    -o -name '*.settings' \
    -o -name '*.template' \
    -o -name '*.wsdl' \
    -o -name '*.wsdl' \
    | xargs grep -E " ${keyword} " > "${FOLDERLOCATION}${SAVEDIR}${keyword}.txt"
done