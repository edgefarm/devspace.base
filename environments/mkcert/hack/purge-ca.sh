#!/usr/bin/env bash
set -e

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "purge-ca <ca_name>"
    exit
fi

if [ -d "${CA_DIR}/$1" ]; then
    echo "Deleting CA $1"
    rm -rf ${CA_DIR}/$1
fi
