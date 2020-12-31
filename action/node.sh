#!/bin/bash

echo "Start node.sh"

echo "Install packages"
npm i --save-dev
echo "Install eslint"
npm install eslint
echo "Check existinf of config file"
if [ -f .eslintrc.* ]
then
    echo "Execute eslint"
    eslint **/*.js --fix
else
    npx eslint --init
    echo "Execute eslint"
    eslint **/*.js --fix

echo "End of node.sh"
