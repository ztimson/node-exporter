#!/bin/sh

NODE_NAME=$(cat "/host/etc/hostname")
echo "node_meta{node_name=\"$NODE_NAME\"} 1" > /etc/node-exporter/node-meta.prom
set -- /bin/node_exporter "$@"
exec "$@"
