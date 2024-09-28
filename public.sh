#!/bin/bash

echo "ensure in branch content[y/n]: "

read yn
if [ "$yn" = "y" ]; then
    echo "input commit message: "
    read commit_msg
    git checkout content
    git add content/posts/
    git commit -m "$commit_msg"
    ls public
    hugo
    ls public
    git push origin content

    git checkout main
    command rm -r categories posts tags
    command mv public/* ../
    git commit -m "A: add post"
    git checkout content
fi
