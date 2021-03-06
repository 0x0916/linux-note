#!/bin/bash

echo -e "\033[0;32mUpload  to GitHub...\033[0m"

# Add changes to git.
git add .

# Commit changes.
msg="update note `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push git@github.com:0x0916/linux-note.git main

