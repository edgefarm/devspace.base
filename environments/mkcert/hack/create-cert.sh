#!/usr/bin/env bash

if ! [ "$#" -gt 2 ]; then
    echo "Illegal number of parameters"
    echo "create-certificate <ca_name> <mk_cert_params>"
    exit
fi

CAROOT=${CA_DIR}/$1 mkcert ${@:2}
