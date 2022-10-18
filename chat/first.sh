#!/bin/bash

servuIp=$(sed -n '1p' group)
dracula=$(sed -n '2p' group)
logLoc=$(sed -n '3p' group)
echo "Welcome to the chat" > chat.txt
sshpass -p $dracula scp $servuIp:$logLoc/outgoing/chat.txt .
cat chat.txt
