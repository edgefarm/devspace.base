#!/usr/bin/env bash
set -e
set -u

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "create-ca-secret <ca_secret_name> <ca_secret_namespace>"
    exit 1
fi

if ! [ -d "${CAROOT}" ]; then
    echo "Creating self-signed CA $1"
    mkdir -p ${CAROOT}
    mkcert || true #2>/dev/null
fi

kubectl -n $2 create secret tls $1 \
    --key=${CAROOT}/rootCA-key.pem \
    --cert=${CAROOT}/rootCA.pem || true #2>/dev/null
