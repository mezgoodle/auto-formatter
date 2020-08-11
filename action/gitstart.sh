#!/bin/bash

set -e
# echo $FIRST_NAME
# REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/SQL.git
echo "### Adding git remote..."
git remote add format https://x-access-token:$GITHUB_TOKEN@github.com/mezgoodle/SQL.git
echo "### Make commit"
echo "hello" > test.txt
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "test commit"
echo "### git status"
git status
echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "auto-formatter"
echo "### Push commit"
git push master format
