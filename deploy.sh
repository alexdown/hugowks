#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Build the project.
#hugo --theme=redlounge --buildDrafts
hugo --theme=redlounge --cleanDestinationDir 

# Add changes to git.
git add .
git add -A

# Commit changes.
msg="rebuilding site `date` - $0"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
# used to be this
# git subtree push --prefix=public git@github.com:alexdown/alexdown.github.io.git master
# now a more pragmatic..
cp -r public/ ../alexdown.github.io
cd ../alexdown.github.io
git add -A
git commit -m "publishing $msg"
git push origin master

# go back
cd -
