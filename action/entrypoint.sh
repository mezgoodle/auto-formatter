#!/bin/bash

#cd action
#sh -c "python 123.py"

#whereis tree
echo "First tree execute"
echo "----"
tree -L 1
echo "Install packages"
pip install sync-folders flask
pip freeze > requirements.txt
echo "Second tree execute"
tree -L 1
echo "Output requirements.txt"
cat requirements.txt
#echo "Hello Max"
