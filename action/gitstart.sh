#!/bin/bash

echo "Start gitstart.sh"
echo "---"
echo "Execute git clone"
echo "---"
git clone https://github.com/mezgoodle/sync-folders.git
cd sync-folders
echo "Execute cat LICENSE"
echo "---"
cat LICENSE
echo "Execute git status"
echo "---"
git status
echo "End of gitstart.sh"
