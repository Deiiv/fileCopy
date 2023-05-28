# File copy docker container
Simple container to copy files

docker build -t deiiv/filecopy:latest .
docker push deiiv/filecopy:latest

docker build -t deiiv/filecopy:v1.01 .
docker push deiiv/filecopy:v1.01

# Sample docker-compose

```yaml
---
version: "2.1"
services:
  sfilecopy3sync:
    image: deiiv/filecopy
    container_name: filecopy
    # defaults to "0 5 * * *", currently has a bug where doesn't override
    build:
      args:
        - CRON_SCHEDULE="0 5 * * *"
    environment:
      - PUID=
      - PGID=
      - MQTT_HOST=
      - MQTT_USER=
      - MQTT_PW=
      - MQTT_TOPIC=
    volumes:
      - /your/source:/source
      - /your/destination:/destination
    restart: unless-stopped
```
