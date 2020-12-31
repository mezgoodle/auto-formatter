#!/bin/bash

echo "### Install clean-html"
npm i -g clean-html
echo "### Install sync-folders"
pip install sync-folders
echo "### Execute clean-html"
python3 utils/clean-html.py
echo "End of html.sh"
