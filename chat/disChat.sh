#!/bin/sh

servuIp=$(sed -n '1p' group)
dracula=$(sed -n '2p' group)
logLoc=$(sed -n '3p' group)
statusx=$(cat status.txt)

clearout() {
    rm 1.txt group chat.txt date.txt name1.txt name.txt numberUsers.txt UN.txt users.txt status.txt

exit
}

trap clearout INT

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

cat chat.txt | grep : | cut -f3 -d ":" | cut -f2 -d " " | sort -u > users.txt
sed -i '/^$/d' users.txt
wc -l users.txt > numberUsers.txt
cat numberUsers.txt | cut -f1 -d " " > UN.txt
numUsers=$(cat UN.txt)

users=$(cat users.txt)

sshpass -p $dracula scp $servuIp:$logLoc/status.txt .

#echo "${RED}Number of Users: $numUsers - User Names: $users ${ENDCOLOR}"
#echo "${GREEN}$statusx${ENDCOLOR}"

whoami > name1.txt 
paste -d / name1.txt 1.txt > name.txt
name=$(cat name.txt)

read update
date > date.txt
date=$(cat date.txt | cut -f4 -d " " | sed 's/^../00/')
echo "$date $name: $update" >> chat.txt

clear
cat chat.txt
echo "${RED}Number of Users: $numUsers - User Names: $users ${ENDCOLOR}"
echo "${GREEN}$statusx${ENDCOLOR}"

sleep 3
#upload
sshpass -p $dracula scp chat.txt $servuIp:$logLoc/chat.txt

sleep 2
#Download
sshpass -p $dracula scp $servuIp:$logLoc/outgoing/chat.txt .

exec $0
