#!/bin/bash

set -e
########################
# Get repository names #
########################
REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
IFS='/' # Setting slash as delimiter
read -a strarr <<< $REPO_FULLNAME # Reading str as an array as tokens separated by IFS  
REPO_SHORTNAME=${strarr[1]}
IFS=$'\n'

#################
# Work with git #
#################
echo "### Clone git remote..."
git clone https://x-access-token:$GITHUB_TOKEN@github.com/$REPO_FULLNAME.git
echo "### Getting branch"
BRANCH=${GITHUB_REF#*refs/heads/}
echo "### Branch: $BRANCH (ref: $GITHUB_REF )"
git checkout $BRANCH
cd $REPO_SHORTNAME

echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"

###############
# NodeJS part #
###############
if [ $node == true ]
then
    echo "Start node.sh"
    sh ./node.sh
else
    echo "NodeJs is skipping"
fi

###############
# Python part #
###############
if [ $python == true ]
then
    echo "Start python.sh"
    sh ./python.sh
    cd $REPO_FULLNAME
else
    echo "Python is skipping"
fi

############
# CSS part #
############
if [ $css == true ]
then
    echo "Start css.sh"
    sh ./css.sh
else
    echo "CSS is skipping"
fi

#################
# MarkDown part #
#################
if [ $md == true ]
then
    echo "Start md.sh"
    sh ./md.sh
else
    echo "Markdown is skipping"
fi

#############
# HTML part #
#############
if [ $html == true ]
then
    echo "Start html.sh"
    sh ./html.sh
else
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
