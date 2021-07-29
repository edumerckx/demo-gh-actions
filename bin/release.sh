#!/bin/sh

git config user.name edumerckx
git config user.email test@test

yarn version $1 &&
  git push https://edumerckx:${PASS}@github.com:edumerckx/demo-gh-actions.git HEAD:master --tags &&
  echo "Successfully released new version!" &&
  exit 0

exit 1
