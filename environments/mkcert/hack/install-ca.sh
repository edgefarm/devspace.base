#!/usr/bin/env bash
set -e
set -u

if [ "$#" -ne 0 ]; then
    echo "Illegal number of parameters"
    echo "install-ca"
    exit 1
fi

echo "installing ${CAROOT}"
mkcert -install || true
