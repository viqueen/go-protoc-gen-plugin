#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <owner> <project>"
    exit 1
fi

owner=$1
project=$2

echo "Owner: $owner"
echo "Project: $project"

sed -i '' "s/viqueen/$owner/g" README.md
sed -i '' "s/go-protoc-gen-plugin/$project/g" README.md

sed -i '' "s/viqueen/$owner/g" go.mod
sed -i '' "s/go-protoc-gen-plugin/$project/g" go.mod