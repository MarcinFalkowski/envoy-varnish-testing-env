#!/usr/bin/env bash

timestamp="$(date '+%Y-%m-%d_%H-%M')"


tcpdump -s 0 \
  -w "/output/tcpdump-${timestamp}.pcap" \
  "(dst host envoy and dst port 80 and src host varnish)
   or (src host envoy and src port 80 and dst host varnish)"