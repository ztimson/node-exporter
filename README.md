# Node-Exporter

This is a copy of [prom/node-exporter](https://hub.docker.com/r/prom/node-exporter) which also add's the hostname metric.

## Example

For the hostname to be detected, you must load the host filesystem into the container's `/host` directory as seen here.

```
version: '3.8'

services:
  node-exporter:
    image: ztimson/node-exporter:latest
    command:
      - --path.rootfs=/host
    volumes:
      - /:/host:ro,rslave
    networks:
      - network
    deploy:
      mode: global
```

Otherwise use the `$HOSTNAME` variable to specify the path to the *hostname file* & ensure it's mounted.
