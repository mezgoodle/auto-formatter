#!/bin/bash

echo "Second test from node.sh"
echo "---"

sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
npm i @mezgoodle/caesar-and-vigenere-ciphers
npm -g list
echo "end of node.sh"
