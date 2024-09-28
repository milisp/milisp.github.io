#!/bin/bash

echo "ensure in branch content[y/n]: "

read yn
if [ "$yn" = "y" ]; then
    echo "input commit message: "
    read commit_msg
    git checkout content
    git add content/posts/
    git commit -m "$commit_msg"
    hugo
    command mv public/* ../
    git push origin content

    git checkout main
    git commit -m "A: add post"
fi
