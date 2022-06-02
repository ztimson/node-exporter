FROM prom/node-exporter:latest

COPY entrypoint.sh /etc/node-exporter/
RUN chmod +x /etc/node-exporter/entrypoint.sh

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]
