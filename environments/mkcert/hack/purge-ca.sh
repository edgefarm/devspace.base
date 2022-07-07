#!/usr/bin/env bash
set -e
set -u

if [ "$#" -ne 0 ]; then
    echo "Illegal number of parameters"
    echo "purge-ca"
    exit
fi

if [ -d "${CAROOT}" ]; then
    echo "Deleting CA ${CAROOT}"
    rm -rf ${CAROOT}
fi
