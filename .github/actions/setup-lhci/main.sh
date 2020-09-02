#!/bin/bash
TODAY=$(date +%Y-%m-%d)
YESTERDAY=$(date -v 1d +%Y-%m-%d)
SHA=$(git rev-parse --short HEAD)

function ctx() {
  echo "::set-env name=LHCI_BUILD_CONTEXT__$1::$2"
}

ctx CURRENT_HASH "$SHA@$TODAY"
ctx COMMIT_TIME "$TODAY"
ctx CURRENT_BRANCH "$(git symbolic-ref --short HEAD)"
ctx COMMIT_MESSAGE "$(git log -1 --format=format:%s)"
ctx AUTHOR "scheduled action <noreply@github.com>"
ctx AVATAR_URL "https://avatars0.githubusercontent.com/in/15368?s=40&v=4"
ctx ANCESTOR_HASH "$SHA@$YESTERDAY"
