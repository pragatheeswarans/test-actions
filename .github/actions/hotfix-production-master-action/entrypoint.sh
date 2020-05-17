#!/bin/sh -l

echo "The merge commit is $1"
echo "::set-output name=commit-hash::$1"
