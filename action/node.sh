#!/bin/bash

echo "Start node.sh"
echo "---"

echo "First list output"
npm -g list
echo "Install package"
npm i @mezgoodle/caesar-and-vigenere-ciphers
echo "Second list output"
npm -g list
echo "End of node.sh"
