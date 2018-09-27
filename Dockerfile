FROM gliderlabs/alpine:edge

LABEL maintainer="Aleksandar Puharic <xzero@elite7hackers.net>"

ENV IPERF_VERBOSE=1
ENV IPERF_LOGFILE="/iperf-server/log/server.log"

RUN apk --update --no-cache add \
  iperf3 \
  bash

RUN mkdir -p /iperf-server/log && touch /iperf-server/log/server.log
COPY entrypoint /iperf-server
WORKDIR /iperf-server

EXPOSE 5201
ENTRYPOINT ["./server.sh"]