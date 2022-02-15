#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "init-ca <ca_name>"
    exit
fi

if ! [ -d "${CA_DIR}/$1" ]; then
    echo "Creating self-signed CA $1"
    mkdir -p ${CA_DIR}/$1
    CAROOT=${CA_DIR}/$1 mkcert 2>/dev/null
fi
