FROM prom/node-exporter:latest

ENV NODE_ID=none
USER root
COPY entrypoint.sh /etc/node-exporter/
RUN chmod +x /etc/node-exporter/entrypoint.sh
ENTRYPOINT ["/etc/node-exporter/entrypoint.sh"]
CMD ["/bin/node_exporter"]
