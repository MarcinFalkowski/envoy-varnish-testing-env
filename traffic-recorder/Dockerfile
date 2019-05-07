FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y tcpdump

COPY start.sh /workdir/start.sh
WORKDIR /workdir
ENTRYPOINT ./start.sh