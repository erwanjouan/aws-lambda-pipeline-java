#!/bin/sh

REPOSITORY_NAME=$1
REGION=eu-west-1

git init
git add .
git commit -am "update"
git remote remove origin || true
git remote add origin ssh://git-codecommit.${REGION}.amazonaws.com/v1/repos/${REPOSITORY_NAME} || true
git push --force --set-upstream origin main
