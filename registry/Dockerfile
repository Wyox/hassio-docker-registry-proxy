ARG BUILD_FROM
FROM registry:3.0.0

ENV REGISTRY_PROXY_REMOTEURL="https://registry-1.docker.io"
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY="/data/registry"
ENV OTEL_TRACES_EXPORTER=none

RUN apk add --no-cache jq

COPY docker-entrypoint.sh /entrypoint.sh
COPY registry-config.yml /etc/docker/registry/config.yml
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
