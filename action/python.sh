#!/bin/bash

#cd action
#sh -c "python 123.py"

#whereis tree
echo "Start python.sh"
echo "----"
echo "First Tree execution"
echo "----"
tree -L 1
echo "Install packages"
echo "----"
pip install sync-folders flask
pip freeze > requirements.txt
echo "Second Tree execution"
echo "----"
tree -L 1
echo "Output to requirements.txt"
echo "----"
cat requirements.txt
echo "Output 123.py"
echo "----"
cat 123.py
echo "End of python.sh"
#echo "Hello Max"
