#!/bin/bash

echo "Start gitstart.sh"
echo "---"
echo "Execute git clone"
echo "---"
git clone https://github.com/mezgoodle/SQL.git
cd SQL
echo "Execute cat LICENSE"
echo "---"
cat LICENSE
echo "Execute git status"
echo "---"
git status
echo "Echo repo full name"
echo "---"
echo $REPO_FULLNAME
echo "End of gitstart.sh"
