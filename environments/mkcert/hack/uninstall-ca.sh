#!/usr/bin/env bash
set -e
set -u

if [ "$#" -ne 0 ]; then
    echo "Illegal number of parameters"
    echo "uninstall-ca"
    exit 1
fi

echo "uninstalling ${CAROOT}"
mkcert -uninstall
