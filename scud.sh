#!/bin/bash

echo "What would you like your username to be?"
read UserChoice

echo "$UserChoice" > 1.txt
cp 1.txt chat
rm 1.txt

#agent creates group
./agent

cd chat

./first.sh

./disChat.sh
