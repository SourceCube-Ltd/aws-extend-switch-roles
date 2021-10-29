#!/bin/bash
#--
# archive.sh
#--
zipfile=aws-extend-switch-roles.zip

cd dist;
rm $zipfile
zip -r $zipfile \
  manifest.json *.html icons/ js/ 
echo "archived: $zipfile"
