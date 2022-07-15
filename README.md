# File copy docker container
Simple container to copy files

# Sample docker-compose

```yaml
---
version: "2.1"
services:
  s3sync:
    image: deiiv/filecopy
    container_name: filecopy
    # defaults to "0 5 * * *", currently has a bug where doesn't override
    build:
      args:
        - CRON_SCHEDULE="0 5 * * *"
    environment:
      - PUID=
      - PGID=
    volumes:
      - /your/source:/source
      - /your/destination:/destination
    restart: unless-stopped
```
