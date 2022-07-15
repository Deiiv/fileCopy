#!/bin/ash

set -e

echo "$(date) - Starting copy job with"

rsync -a -v --ignore-existing /source /destination

echo "$(date) - End of copy job"
