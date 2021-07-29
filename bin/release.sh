#!/bin/sh
yarn version $1 &&
  git push git@github.com:edumerckx/demo-gh-actions.git HEAD:master --tags &&
  echo "Successfully released new version!" &&
  exit 0

exit 1
