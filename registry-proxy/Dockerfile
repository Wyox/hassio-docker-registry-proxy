ARG BUILD_FROM
FROM $BUILD_FROM

ADD nginx.conf /etc/nginx/nginx.conf
ADD entrypoint.sh /entrypoint.sh
ADD create_ca_cert.sh /create_ca_cert.sh
RUN chmod +x /create_ca_cert.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]