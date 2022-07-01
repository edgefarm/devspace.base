#!/usr/bin/env bash
set -e

if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "create-ca-secret <ca_name> <ca_secret_name> <ca_secret_namespace>"
    exit
fi

export CAROOT=${CA_DIR}/$1

if ! [ -d "${CAROOT}" ]; then
    echo "Creating self-signed CA $1"
    mkdir -p ${CAROOT}
    CAROOT=${CAROOT} mkcert 2>/dev/null
fi

kubectl -n $3 create secret tls $2 \
    --key=${CAROOT}/rootCA-key.pem \
    --cert=${CAROOT}/rootCA.pem 2>/dev/null
