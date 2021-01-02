#!/bin/bash

set -e
########################
# Get repository names #
########################
REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
IFS="/" # Setting slash as delimiter
read -a strarr <<< $REPO_FULLNAME # Reading str as an array as tokens separated by IFS  
REPO_SHORTNAME=${strarr[1]}
IFS=$"\n"

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
# if [ "$node" == true ]
# then
#     echo "Start node.sh"
#     echo "Install packages"
#     npm i --save-dev
#     echo "Install eslint"
#     npm install eslint
#     echo "Check existinf of config file"
#     if [ -f .eslintrc.* ]
#     then
#         echo "Execute eslint"
#         eslint **/*.js --fix
#     else
#         npx eslint --init
#         echo "Execute eslint"
#         eslint **/*.js --fix
#     echo "End of node.sh"
#     fi
# else
#     echo "NodeJs is skipping"
# fi

###############
# Python part #
###############
if [ "$python" == true ] ;
then
    echo "Start python.sh"
    echo "Install autopep8"
    pip install autopep8
    echo "Execute autopep"
    autopep8 --in-place -r -a -a .
    echo "End of python.sh"
else
    echo "Python is skipping"
fi

############
# CSS part #
############
# if [ "$css" == true ] ;
# then
#     echo "Start css.sh"
#     echo "Install stylelint"
#     npm install stylelint stylelint-config-standard
#     echo "Create config file"
#     echo "{\"extends\": \"stylelint-config-standard\"}" > .stylelintrc.json
#     echo "Execute stylelint"
#     stylelint "**/*.css" --fix
#     echo "End of css.sh"
# else
#     echo "CSS is skipping"
# fi

#################
# MarkDown part #
#################
# if [ "$md" == true ] ;
# then
#     echo "Start md.sh"
#     echo "Install markdownlinter"
#     npm install markdownlint
#     npm install -g markdownlint-clin
#     echo "Execute markdownlinter"
#     markdownlint **/*.md --ignore node_modules --fix
#     echo "End of md.sh"

# else
#     echo "Markdown is skipping"
# fi

#############
# HTML part #
#############
# if [ "$html" == true ] ;
# then
#     echo "Start html.sh"
#     echo "### Install clean-html"
#     npm i -g clean-html
#     echo "### Install sync-folders"
#     pip install sync-folders
#     echo "Execute ls and pwd"
#     cd ../
#     ls
#     pwd
#     echo "### Execute clean-html"
#     python3 utils/clean-html.py
#     echo "End of html.sh"
# else
#     echo "HTML is skipping"
# fi

#################
# Work with git #
#################
echo "### git add ..."
git add .
echo "### git commit ..."
git commit -m "Auto-formatter" || true
echo "### git status"
git status
echo "### Push commit"
git push origin master 
echo "Work is done"
