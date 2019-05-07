#!/usr/bin/env bash

varnishd -f /workdir/config.vcl -s malloc,100M -a 0.0.0.0:80

varnishlog