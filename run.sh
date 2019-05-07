#!/usr/bin/env bash

export ENVOY_CONFIG="default_timeout.yml"  # run envoy with default delayed_close_timeout, which is 1s
#export ENVOY_CONFIG="0.01s_timeout.yml" # run envoy with delayed_close_timeout set to 0.01s

export VARNISH_CONFIG="probe_100ms.vcl"

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${SCRIPTDIR}"
docker-compose up --build
popd