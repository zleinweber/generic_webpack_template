#!/bin/bash

set -euf

PROJECT_NAME="$1"

sed -i "s/WEBPACK_PROJECT/$PROJECT_NAME/g" README.md package.json src/index.js
sed -i "/^package-lock.json/d" .gitignore