#!/bin/bash
TODAY=$(date +%Y-%m-%d)
YESTERDAY=$(date -v 1d +%Y-%m-%d)
SHA=$(git rev-parse --short HEAD)
REF=$(git symbolic-ref --short HEAD)
(
  echo "CURRENT_HASH=$SHA@$TODAY"
  echo "COMMIT_TIME=$TODAY"
  echo "CURRENT_BRANCH=$REF"
  echo "COMMIT_MESSAGE=Scheduled run: $TODAY"
  echo "AUTHOR=Actions <noreply@github.com>"
  echo "AVATAR_URL=https://avatars0.githubusercontent.com/in/15368?s=40&v=4"
  echo "ANCESTOR_HASH=$SHA@$YESTERDAY"
) >> $GITHUB_ENV
