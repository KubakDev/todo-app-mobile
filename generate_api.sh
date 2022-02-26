#!/bin/bash
folder_name='database_repository_dio' && \
BASEDIR=$(dirname "$0") && \
mkdir -p "$BASEDIR"/packages/ && \
cd "$BASEDIR"/packages/ && \

echo "Removing api folder if it exists ..."
rm -rf $folder_name && \

echo "Generating api library ... " && \

curl -s https://todo.kubak.dev/api/swagger/v1/swagger.json | \
    jq -j '.|walk(if type=="object"
     then with_entries(select(.key | 
     test("(^v1/users)|(^v1/customers)|(^/status)") | not))
     else . end)' > swagger.json && \

npx @openapitools/openapi-generator-cli generate -g dart-dio-next \
    -o $folder_name -i swagger.json \
    --global-property=apiDocs=false \
    --global-property=apiTests=false \
    --global-property=modelDocs=false \
    --global-property=modelTests=false \
    --additional-properties=pubAuthor=Kubak \
    --additional-properties=pubName=$folder_name \
    --additional-properties=pubAuthorEmail=kubakdev@gmail.com && \

rm swagger.json  && \

cd ./"$folder_name" && \

flutter packages upgrade && flutter pub get && flutter pub run build_runner build
