#!/bin/bash

echo "Start node.sh"
echo "---"

echo "Create package.json"
npm init -y
echo "First list output"
npm list
echo "Install package"
npm i @mezgoodle/caesar-and-vigenere-ciphers --save
echo "Second list output"
npm list
echo "Output package.json"
cat package.json
echo "End of node.sh"
