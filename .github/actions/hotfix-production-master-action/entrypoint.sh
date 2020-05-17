#!/bin/sh -l

echo "The merge commit is $1"
echo "The github event path is $GITHUB_EVENT_PATH"
echo "::set-output name=commit-hash::$1"

head=$(jq -r .head.ref ${GITHUB_EVENT_PATH})
echo "Head is $head"
git checkout -b hotfix_backport origin/${head}
git push origin hotfix_backport
