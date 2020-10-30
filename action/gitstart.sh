#!/bin/bash

set -e
# echo $FIRST_NAME
# REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
REPO_FULLNAME=SQL

echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"
echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/$REPO_FULLNAME.git
# echo "Nothing here, only testing"
# ls
cd $REPO_FULLNAME
echo "### Adding git remote..."
git remote add format https://x-access-token:$GITHUB_TOKEN@github.com/mezgoodle/$REPO_FULLNAME.git
echo "### Install clean-html"
npm i -g clean-html
echo "### Install sync-folders"
pip install sync-folders
echo "### Execute clean-html"
# ls
cd ../
python3 utils/clean-html.py
cd $REPO_FULLNAME
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "test clean-html" || true
echo "### git status"
git status
echo "### Push commit"
git push format master 
echo "Work is done"
