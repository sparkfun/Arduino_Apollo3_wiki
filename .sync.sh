#!/bin/sh

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git remote remove origin
git remote add origin https://$GITHUB_API_KEY@github.com/sparkfun/Arduino_Apollo3-wiki.git > /dev/null 2>&1
git remote add upstream https://$GITHUB_API_KEY@github.com/sparkfun/Arduino_Apollo3.wiki.git > /dev/null 2>&1
git fetch origin
git fetch upstream
git merge upstream/master --no-edit
git push origin HEAD:master > /dev/null 2>&1
git push upstream HEAD:master > /dev/null 2>&1