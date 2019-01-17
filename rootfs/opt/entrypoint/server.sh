#!/usr/bin/env bash
set -e

source envParse.sh

echo "Starting server..."

if [ ! -z "$argumentsBag" ]; then
	echo "Assigning arguments $argumentsBag"
fi

# Simple variable usage is intended here
/usr/bin/iperf3 --server $argumentsBag
