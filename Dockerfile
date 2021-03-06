FROM nlss/s6-alpine:latest

LABEL maintainer="Aleksandar Puharic <xzero@elite7hackers.net>"

ENV IPERF_VERBOSE=1

RUN set -ex \
    && apk --update --no-cache add \
        iperf3 \
        bash \
    && adduser -s /bin/false -D -h /tmp/iperf iperf

ADD rootfs /
WORKDIR /iperf3-server

EXPOSE 5201
