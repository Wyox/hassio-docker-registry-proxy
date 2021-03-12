ARG BUILD_FROM
FROM $BUILD_FROM

ADD entrypoint.sh /entrypoint-2.sh
ADD create_ca_cert.sh /create_ca_cert-2.sh
RUN chmod +x /create_ca_cert.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint-2.sh"]