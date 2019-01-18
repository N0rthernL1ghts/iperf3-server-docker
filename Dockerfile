FROM smebberson/alpine-base

LABEL maintainer="Aleksandar Puharic <xzero@elite7hackers.net>"

ENV IPERF_VERBOSE=1

RUN apk --update --no-cache add \
  iperf3 \
  bash \
  && adduser -s /bin/false -D -h /tmp/iperf iperf

ADD rootfs /
WORKDIR /iperf3-server

EXPOSE 5201
