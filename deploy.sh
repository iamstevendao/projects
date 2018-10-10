#!/usr/bin/env sh

# abort on errors
set -e

git config --global user.email "$GH_EMAIL" > /dev/null 2>&1
git config --global user.name "$GH_NAME" > /dev/null 2>&1

git add -A
git commit -m "[CI cron] Update sub-modules && deploy"

git push -f git@github.com:iamstevendao/projects.git master:master

cd -
