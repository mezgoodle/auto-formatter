#!/bin/bash

set -e
#######################
# Get repository name #
#######################
REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

#################
# Work with git #
#################
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

###############
# NodeJS part #
###############
if [ $node == true ]
then
    echo "Start node.sh"
    sh /myapp/node.sh
else
then
    echo "NodeJs is skipping"
fi

###############
# Python part #
###############
if [ $python == true ]
then
    echo "Start python.sh"
    sh /myapp/python.sh
else
then
    echo "Python is skipping"
fi

############
# CSS part #
############
if [ $css == true ]
then
    echo "Start css.sh"
    sh /myapp/css.sh
else
then
    echo "CSS is skipping"
fi

#################
# MarkDown part #
#################
if [ $md == true ]
then
    echo "Start md.sh"
    sh /myapp/md.sh
else
then
    echo "Markdown is skipping"
fi

#############
# HTML part #
#############
if [ $html == true ]
then
    echo "Start html.sh"
    sh /myapp/html.sh
else
then
    echo "HTML is skipping"
fi

#################
# Work with git #
#################
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "autoformatter" || true
echo "### git status"
git status
echo "### Push commit"
git push origin master 
echo "Work is done"
