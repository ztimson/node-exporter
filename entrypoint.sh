#!/bin/sh

if [ -z "$HOSTNAME" ]; then $HOSTNAME="/host/hostname"; fi

NODE_NAME=$(cat "$HOSTNAME")
echo "node_meta{node_name=\"$NODE_NAME\"} 1" > /etc/node-exporter/node-meta.prom
set -- /bin/node_exporter "$@"
exec "$@"
