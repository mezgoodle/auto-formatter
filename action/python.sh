#!/bin/bash

cd ../
echo "Install autopep8"
pip install autopep8
echo "Execute autopep"
autopep8 --in-place -r -a -a .
echo "End of python.sh"
