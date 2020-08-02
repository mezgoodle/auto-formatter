#!/bin/bash

#cd action
#sh -c "python 123.py"

#whereis tree
tree -L 1
pip freeze > requirements.txt
tree -L 1
cat requirements.txt
#echo "Hello Max"
