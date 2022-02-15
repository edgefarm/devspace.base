#!/usr/bin/env bash

if ! [ "$#" -gt 2 ]; then
    echo "Illegal number of parameters"
    echo "create-certificate <ca_name> <mkcert_args>"
    exit
fi

CAROOT=${CA_DIR}/$1 mkcert -client ${@:2}
