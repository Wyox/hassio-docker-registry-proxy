ARG BUILD_FROM
FROM $BUILD_FROM


ENV REGISTRY_PROXY_REMOTEURL="https://registry-1.docker.io"
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY="/data/registry"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]