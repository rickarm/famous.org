#!/usr/bin/env bash

npm run build

if branch=$(git symbolic-ref --short -q HEAD)
then
  echo on branch $branch
  if [[ "$branch" == "master" ]]; then
      echo "Deploying to Production";
      aws s3 --region=us-west-1 --acl=public-read cp --recursive ./public s3://famous.org/
  else
      if [[ "$1" == "develop" ]]; then
          echo "Deploying to Staging";
          aws s3 --region=us-west-1 --acl=public-read cp --recursive ./public s3://staging.famous.org/
      else
          echo "Unknown branch. Deploy is terminated.";
      fi
  fi
else
  echo not on any branch
fi
