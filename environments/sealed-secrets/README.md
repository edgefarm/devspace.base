# sealed-secrets devspace environment

Setup and manage sealed-secrets for local development.

* Setup sealed-secrets into cluster
* Preload shared sealed-secrets master key,
  to have same key in every dev cluster.

## Deployments

### sealed-secrets

Installs the sealed-secrets operator into current cluster.

## Commands

### `init`

Initialize sealed-secret (including load of shared master key).

### `backup-master-key`

Convenient method to get sealed-secret from current cluster and store
result to `SEALED_SECRETS_MASTER_KEY_FILE`.

`backup-master-key` is only needed to get the initial master key,
which you can share in your dev team.

### `restore-master-key`

Inserts the master key, located under`SEALED_SECRETS_MASTER_KEY_FILE` into
the current cluster. (indirectly called by `init`)

## Variables

### `K3D_CLUSTER_NAME`

Name of the cluster to create.
default: `devspace-base`

### `K3D_CLUSTER_CONFIG`

Filepath to k3d cluster config yaml to use for creation.
default: `./config/minimal-cluster.yaml`

### `K3D_REGISTRY_NAME`

Filepath to k3d cluster config yaml to use for creation.
default: `registry.k3d.localhost`

(For most use cases it is not necessary to overwrite the registry.)

### `K3D_REGISTRY_PORT`

Port used by registry.
default: `5000`

## Profiles

-none-
