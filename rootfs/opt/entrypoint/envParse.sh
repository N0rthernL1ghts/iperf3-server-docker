#!/usr/bin/env bash

### Declare variables
argumentsBag=

### Declare functions

function addArgument() {
	argumentsBag="$argumentsBag $1"
}

# addArgIfEnvExs [env name] [argument name] +int[If set, pass env value as argument value]
function addArgIfEnvExs() {

	if [ "${!1+1}" ]; then

		argumentValue=$([ ! -z "$3" ] && echo "\"${!1}\"" || echo "")

		addArgument "--$2 $argumentValue"
	fi
}

### Register environment variables
addArgIfEnvExs IPERF_LOGFILE logfile 1
addArgIfEnvExs IPERF_DEBUG debug
addArgIfEnvExs IPERF_VERBOSE verbose
addArgIfEnvExs IPERF_PORT port 1
addArgIfEnvExs IPERF_FORMAT format 1
addArgIfEnvExs IPERF_BIND_HOST bind 1
addArgIfEnvExs IPERF_JSON_OUTPUT json
