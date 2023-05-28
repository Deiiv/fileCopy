#!/bin/ash

set -e

echo "$(date) - Starting copy job with"

rsync -a -v --ignore-existing --exclude '.*/' --exclude '*.tmp*' --exclude '*/Sent/' /source/ /destination && mosquitto_pub -h $MQTT_HOST -u $MQTT_USER -P $MQTT_PW -t $MQTT_TOPIC -m "Healthy as of $(date '+%d-%m-%Y')"

echo "$(date) - End of copy job"
