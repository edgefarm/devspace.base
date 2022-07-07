#!/usr/bin/env bash
set -e
set -u

if ! [ "$#" -gt 1 ]; then
    echo "Illegal number of parameters"
    echo "create-certificate <mk_cert_params>"
    exit
fi

mkcert ${@:2}
