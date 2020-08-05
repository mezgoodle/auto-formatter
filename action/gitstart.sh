#!/bin/bash

echo "Start gitstart.sh"
echo "---"
echo "Execute git clone"
echo "---"
git clone https://github.com/mezgoodle/SQL.git
cd SQL
echo "Execute cat index.sql"
echo "---"
cat index.sql
echo "Execute git status"
echo "---"
git status
echo "Echo repo full name"
echo "---"
REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")
echo $REPO_FULLNAME
echo "End of gitstart.sh"
