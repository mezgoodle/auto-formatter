#!/bin/bash

set -e
REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

echo "## Initializing git repo..."
git init
echo "### Adding git remote..."
git remote add origin https://x-access-token:$GITHUB_TOKEN@github.com/$REPO_FULLNAME.git
echo "### Getting branch"
BRANCH=${GITHUB_REF#*refs/heads/}
echo "### git fetch $BRANCH ..."
git fetch origin $BRANCH
echo "### Branch: $BRANCH (ref: $GITHUB_REF )"
git checkout $BRANCH

echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"

if [ $node == true ]
then
    echo "Start node.sh"
    sh /myapp/node.sh
else if [ $node == false ]
then
    echo "NodeJs is skipping"

if [ $python == true ]
then
    echo "Start python.sh"
    sh /myapp/python.sh
else if [ $python == false ]
then
    echo "Python is skipping"

echo "### Install clean-html"
npm i -g clean-html
echo "### Install sync-folders"
pip install sync-folders
echo "### Execute clean-html"
python3 utils/clean-html.py
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "test clean-html" || true
echo "### git status"
git status
echo "### Push commit"
git push format master 
echo "Work is done"
