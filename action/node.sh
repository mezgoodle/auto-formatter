#!/bin/bash

echo "Start node.sh"
echo "---"

echo "Create package.json"
npm init -y
echo "First list output"
npm list
echo "Install package"
npm i --save-dev
echo "Init config"
npx eslint --init
echo "End of node.sh"
