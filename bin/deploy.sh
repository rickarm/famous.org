#!/usr/bin/env bash

npm run build
aws s3 --profile=famous --acl=public-read cp --recursive ./public s3://staging.famous.org/
