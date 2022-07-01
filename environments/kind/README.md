# kind devspace environment

Setup and manage kind cluster instance's for local development.
This is currently the preferred way of running clusters over k3d or minikube.

* Cluster with predefined or self-defined configuration

Predefined cluster configurations are located in `config`-folder and can be
used by setting `KIND_CLUSTER_CONFIG`.

## Deployments

-none-

## Commands

### `activate`

Configure kubernetes context etc. to point to this cluster.
Needs to be called when switch from another environment back
to an already initialized environment.

### `purge`

Deletes the kind cluster resources (except container registry).

### `init`

Creates kind registry and custer, and calls `devspace run activate`.

## Variables

### `KIND_CLUSTER_NAME`

Name of the cluster to create.
default: `devspace-base`

### `KIND_CLUSTER_CONFIG`

Filepath to kind cluster config yaml to use for creation.
default: `./config/minimal-cluster.yaml`

Attention: Using local path like `./config/minimal-cluster.yaml` points
to devspace folder of `kind`, not to the devspace-folder in your environment.
Currently didn't find a clean way to use folder in derived devspace
environments. So you need to add new configs into config folder from
`devspace.base`.

### `KIND_CLUSTER_VERSION`

Version of the kubernets cluster.
default: `v1.21.12`

## Profiles

-none-
