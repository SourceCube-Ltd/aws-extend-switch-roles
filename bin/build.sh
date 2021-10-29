#!/bin/bash
#--
# build.sh
#--

set -e

mkdir -p dist/js

options=dist/js/options.js
popup=dist/js/popup.js
background=dist/js/background.js

npx rollup src/options.js --file $options
npx rollup src/popup.js --file $popup
npx rollup src/background.js --file $background

cp src/content.js dist/js/
cp src/attach_target.js dist/js/
cp -r *.html dist/
cp -r icons  dist/
cp manifest.json dist/

echo "build done"
