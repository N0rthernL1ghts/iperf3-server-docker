FROM gliderlabs/alpine:edge

LABEL maintainer="Aleksandar Puharic <xzero@elite7hackers.net>"

ENV IPERF_VERBOSE=1

RUN apk --update --no-cache add \
  iperf3 \
  supervisor \
  bash

ADD rootfs /
WORKDIR /opt/entrypoint

EXPOSE 5201

CMD ["supervisord", "-c", "/usr/local/etc/supervisord.conf"]

ENTRYPOINT ["./server.sh"]

