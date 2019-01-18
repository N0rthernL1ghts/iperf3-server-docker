#!/usr/bin/env bash
set -e

source envParse.sh

if [ ! -z "$argumentsBag" ]; then
	echo "Assigning arguments $argumentsBag"
fi

export IPRF_SERVER_ARGUMENTS_BAG="${argumentsBag}"

exec "$@"
