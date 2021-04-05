ARG BUILD_FROM
FROM $BUILD_FROM


ENV REGISTRY_PROXY_REMOTEURL="https://registry-1.docker.io"
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY="/data/registry"

COPY test.sh /tester.sh
COPY config.yml /etc/docker/registry/config.yml
RUN chmod +x /tester.sh

ENTRYPOINT []
# CMD ["/etc/docker/registry/config.yml"]
CMD ["/tester.sh"]