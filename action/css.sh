#!/bin/bash

echo "Install stylelint"
npm install stylelint stylelint-config-standard
echo "Create config file"
echo "{\"extends\": \"stylelint-config-standard\"}" > .stylelintrc.json
echo "Execute stylelint"
stylelint "**/*.css" --fix
echo "End of css.sh"
