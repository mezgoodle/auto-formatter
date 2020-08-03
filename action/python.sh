#!/bin/bash

#cd action
#sh -c "python 123.py"

#whereis tree
echo "Start node.sh"
echo "----"
echo "First tree execute"
echo "----"
tree -L 1
echo "Install packages"
echo "----"
pip install sync-folders flask
pip freeze > requirements.txt
echo "Second tree execute"
echo "----"
tree -L 1
echo "Output requirements.txt"
echo "----"
cat requirements.txt
echo "End of node.sh"
#echo "Hello Max"
