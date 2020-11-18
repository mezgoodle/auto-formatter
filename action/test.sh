#!/bin/bash

set -e
REPO_FULLNAME=SQL

echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"
echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/$REPO_FULLNAME.git
cd $REPO_FULLNAME
echo "### Adding git remote..."
echo "Echo local env var..."
echo $HOME
git remote add format https://x-access-token:98a671c11f86298df823dc60aa8237de0061914e@github.com/mezgoodle/$REPO_FULLNAME.git
echo "### Install clean-html"
npm i -g clean-html
echo "### Install sync-folders"
pip install sync-folders
echo "### Cat index.sql"
cat index.sql
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "test on Travis CI" || true
echo "### git status"
git status
echo "### Push commit"
git push format master 
echo "Work is done"
