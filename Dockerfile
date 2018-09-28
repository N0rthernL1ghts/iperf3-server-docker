FROM gliderlabs/alpine:edge

LABEL maintainer="Aleksandar Puharic <xzero@elite7hackers.net>"

ENV IPERF_VERBOSE=1
ARG WORKDIR="/iperf-server"

RUN apk --update --no-cache add \
  iperf3 \
  bash

COPY entrypoint $WORKDIR
WORKDIR $WORKDIR

EXPOSE 5201
ENTRYPOINT ["./server.sh"]