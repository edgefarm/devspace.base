# minikube devspace environment

Setup and manage minikube cluster instance's for local development.

* Cluster with predefined or self-defined configuration

Predefined cluster configurations are located in `config`-folder and can be
used by setting `minikube_CLUSTER_CONFIG`.

## Deployments

-none-

## Commands

### `activate`

Configure kubernetes context etc. to point to this cluster.
Needs to be called when switch from another environment back
to an already initialized environment.

### `purge`

Deletes the minikube cluster resources.

### `init`

Creates minikube registry and custer, and calls `devspace run activate`.

## Variables

### `MINIKUBE_CLUSTER_NAME`

Name of the cluster to create.
default: `devspace-base`

### `MINIKUBE_EXTRA_ARGS`

Extra args for minikube. Run `minikube start --help` for possible arguments

## Profiles

-none-
