#!/bin/bash

set -e

echo "### Login into git..."
git config --global user.email "mezgoodle@gmail.com"
git config --global user.name "mezgoodle"
git config --global hub.protocol https
echo "## Initializing git repo..."
git clone https://github.com/mezgoodle/SQL.git
cd SQL
echo "### Install clean-html..."
npm i -g clean-html
echo "### Install sync-folders..."
pip install sync-folders
echo "### Cat index.sql..."
cat index.sql
echo "### git add..."
git add .
echo "### git commit..."
git commit -m "test on Travis CI" || true
echo "### git status..."
git status
echo "### Push commit..."
git push origin master || true
echo "Work is done"
