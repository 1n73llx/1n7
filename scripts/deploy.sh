#!/usr/bin/env sh

# abort on errors
set -ev

# setup git
git config --global user.name 1n73llx
git config --global user.email 1n73llx666@gmail.com
git config --global push.default simple

# navigate to build output directory
cd docs/.vuepress/dist

git init
git add --all
git commit -m ':books: auto deploy' > /dev/null 2>&1

# list remote
echo ${GITHUB_REPO}

# push 
git push -f -q "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git" HEAD:master > /dev/null 2>&1


