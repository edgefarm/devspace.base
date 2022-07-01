#!/usr/bin/env bash
set -e

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "uninstall-ca <ca_name>"
    exit
fi

CAROOT=${CA_DIR}/$1 mkcert -uninstall
