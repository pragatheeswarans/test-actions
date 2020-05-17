#!/bin/sh -l

echo "The merge commit is $1"
echo "The github event path is $GITHUB_EVENT_PATH"
echo "::set-output name=commit-hash::$1"
pull_request_head_branch=$(jq -r ".pull_request.head.ref" "$GITHUB_EVENT_PATH")
echo "The branch name is $pull_request_head_branch"
# git fetch origin
# git checkout -b hotfix_backport origin/master
# git push origin hotfix_backport
