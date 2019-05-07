FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y debian-archive-keyring
RUN apt-get install -y curl gnupg apt-transport-https
RUN curl -L https://packagecloud.io/varnishcache/varnish60lts/gpgkey | apt-key add -

RUN echo "deb https://packagecloud.io/varnishcache/varnish60lts/ubuntu/ bionic main\n"\
         "deb-src https://packagecloud.io/varnishcache/varnish60lts/ubuntu/ bionic main" \
         > /etc/apt/sources.list.d/varnishcache_varnish60lts.list

RUN apt-get update
RUN apt-get install -y varnish

COPY start.sh /workdir/start.sh
WORKDIR /workdir

ARG config
RUN test -n "$config"
COPY "vcl/${config}" /workdir/config.vcl

ENTRYPOINT ./start.sh