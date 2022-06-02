#!/bin/sh -e

NODE_NAME=$(cat "/host/etc/hostname")
echo "node_meta{node_id=\"$NODE_ID\", container_label_com_docker_swarm_node_id=\"$NODE_ID\", node_name=\"$NODE_NAME\"} 1" > /etc/node-exporter/node-meta.prom
set -- /bin/node_exporter "$@"
exec "$@"
