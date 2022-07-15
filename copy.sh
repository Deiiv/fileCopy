#!/bin/ash

set -e

echo "$(date) - Starting copy job with"

aws s3 sync /data s3://"$BUCKET""$BUCKET_PATH" --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*"

echo "$(date) - End of copy job"
