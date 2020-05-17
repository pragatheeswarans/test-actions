#!/bin/sh -l

echo "The merge commit is $1"
echo "The github event path is $GITHUB_EVENT_PATH"
echo "::set-output name=commit-hash::$1"
