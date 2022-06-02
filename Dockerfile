FROM prom/node-exporter:latest

USER root
COPY entrypoint.sh /etc/node-exporter/
ENTRYPOINT ["sh", "/etc/node-exporter/entrypoint.sh"]
CMD ["/bin/node_exporter"]
