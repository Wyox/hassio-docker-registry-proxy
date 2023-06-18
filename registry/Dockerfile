ARG BUILD_FROM
FROM registry:2.8.2


ENV REGISTRY_PROXY_REMOTEURL="https://registry-1.docker.io"
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY="/data/registry"

COPY docker-entrypoint.sh /entrypoint.sh
COPY registry-config.yml /etc/docker/registry/config.yml
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
