#!/bin/bash

version=$(cat src/manifest.json | jq .version | sed "s/\"//g")
echo $version creating.

mkdir dist/TCU_Attend_Chrome-$version
cp -r src/* dist/TCU_Attend_Chrome-$version/
zip -r dist/TCU_Attend_Chrome-$version.zip dist/TCU_Attend_Chrome-$version/

echo $version create.