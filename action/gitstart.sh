#!/bin/bash

set -e
# echo $FIRST_NAME
# REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

# echo "### Login into git..."
# git config --global user.email "mezgoodle@gmail.com"
# git config --global user.name "mezgoodle"
# echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/SQL.git
node utils/clean-html.js
# cd SQL
# echo "### Adding git remote..."
# git remote add format https://x-access-token:$GITHUB_TOKEN@github.com/mezgoodle/SQL.git
# echo "### Install clean-html"
# npm i -g clean-html
# echo "### Execute clean-html"
# clean-html *.html --in-place
# echo "### git add ..."
# git add .
# echo "### git commit ..."
# git commit -m "test autopep8" || true
# echo "### git status"
# git status
# echo "### Push commit"
# git push format master 
# echo "Work is done"
