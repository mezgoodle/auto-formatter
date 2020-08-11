#!/bin/bash

set -e
# echo $FIRST_NAME
# REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
echo $GITHUB_TOKEN
echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"
echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/SQL.git
cd SQL
echo "### Adding git remote..."
git remote add format https://x-access-token:ef135744565884cbc0692174933542fcac3e649d@github.com/mezgoodle/SQL.git
echo "### Make commit"
echo "hello" > test.txt
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "test commit"
echo "### git status"
git status
echo "### Push commit"
git push format master 
