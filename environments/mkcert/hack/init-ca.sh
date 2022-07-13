#!/usr/bin/env bash
set -e
set -u

if [ "$#" -ne 0 ]; then
    echo "Illegal number of parameters"
    echo "init-ca"
    exit
fi

if ! [ -d "${CAROOT}" ]; then
    echo "Creating self-signed CA ${CAROOT}"
    mkdir -p ${CAROOT}
    mkcert || true #2>/dev/null
else
    echo "CA ${CAROOT} already exists."
fi
