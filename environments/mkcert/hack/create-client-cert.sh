#!/usr/bin/env bash
set -e
set -u

if ! [ "$#" -gt 1 ]; then
    echo "Illegal number of parameters"
    echo "create-certificate <mkcert_args>"
    exit 1
fi

echo $CAROOT
mkcert -client ${@:1} || true
