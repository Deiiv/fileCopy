#!/bin/ash

set -e

echo "$(date) - Starting copy job with"

rsync -a -v --ignore-existing --exclude ".*/" --exclude '*.tmp*' /source /destination

echo "$(date) - End of copy job"
