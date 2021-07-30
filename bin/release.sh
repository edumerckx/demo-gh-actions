#!/bin/sh

if [ $1 != "major" ] && [ $1 != "minor" ] && [ $1 != "patch" ]
then
  echo "Allowed values are: major, minor or patch" && 
  exit 1
fi

git config user.name edumerckx
git config user.email test@test

yarn version --$1 &&
  git push https://edumerckx:${PASS}@github.com/edumerckx/demo-gh-actions.git HEAD:main --tags &&
  echo "Successfully released new version!" &&
  exit 0

exit 1
