#!/usr/bin/env bash

#
# Script is expecting branch as an argument: origin/master or origin/develop.
# Jenkins is going to look after the project and run the script with the appropriate parameter.
########################################
npm install;
npm run build;

if [[ $# > 0 ]]; then
    if [[ "$1" == "origin/master" ]]; then
        echo "Deploying to Production";
        aws s3 --profile=famous --acl=public-read cp --recursive ./public s3://famous.org/
    else
        if [[ "$1" == "origin/develop" ]]; then
            echo "Deploying to Staging";
            aws s3 --profile=famous --acl=public-read cp --recursive ./public s3://staging.famous.org/
        else
            echo "Unknown branch. Deploy is terminated.";
        fi
    fi
fi
