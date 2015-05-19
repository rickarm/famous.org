npm run build
aws s3 --acl=public-read cp --recursive ./public s3://staging.famous.org/
