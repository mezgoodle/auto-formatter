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
else
then
    echo "NodeJs is skipping"
fi

if [ $python == true ]
then
    echo "Start python.sh"
    sh /myapp/python.sh
else
then
    echo "Python is skipping"
fi

if [ $css == true ]
then
    echo "Start css.sh"
    sh /myapp/css.sh
else
then
    echo "CSS is skipping"
fi

if [ $md == true ]
then
    echo "Start md.sh"
    sh /myapp/md.sh
else
then
    echo "Markdown is skipping"
fi

if [ $html == true ]
then
    echo "Start html.sh"
    sh /myapp/html.sh
else
then
    echo "HTML is skipping"
fi

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
