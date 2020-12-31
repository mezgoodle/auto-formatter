#!/bin/bash

echo "Install markdownlinter"
npm install markdownlint
npm install -g markdownlint-clin
echo "Execute markdownlinter"
markdownlint **/*.md --ignore node_modules --fix
echo "End of md.sh"
