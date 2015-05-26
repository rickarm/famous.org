#!/usr/bin/env bash

npm install
npm run build

# Receiving branch to deploy from CI
if [[ $# > 0 ]]; then
  branch=$1
  echo on branch $branch
else
  # Checking current branch
  if branch=$(git symbolic-ref --short -q HEAD); then
    echo on branch $branch
  else
    echo not on any branch
  fi
fi

# Deploying based on the branch
if [[ "$branch" == "master" ]]; then
    echo "Deploying to Production";
    aws s3 --region=us-west-1 --acl=public-read cp --recursive ./public s3://famous.org/
else
    if [[ "$branch" == "develop" ]]; then
        echo "Deploying to Staging";
        aws s3 --region=us-west-1 --acl=public-read cp --recursive ./public s3://staging.famous.org/
    else
        echo "Did not deploy.";
    fi
fi
