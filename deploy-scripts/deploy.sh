#!/usr/bin/env sh

set -xe

echo "about to try and deploy"
apt-get update
apt-get -y install zip
pip install --upgrade pip
pip install awscli

cd src
zip target.zip -- *.py
ls
aws lambda update-function-code --function-name "$1" --zip-file fileb://target.zip
aws lambda publish-version --function-name "$1"