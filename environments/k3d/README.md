# k3d devspace environment

Setup and manage k3d cluster instance's for local development.

* Cluster with predefined or self-defined configuration
* k3d based container registry to speed-up recreation of environments

## Deployments

-none-

## Commands

### `activate`

Configure kubernetes context etc. to point to this cluster.
Needs to be called when switch from another environment back
to an already initialized environment.

### `purge`

Deletes the k3d cluster resources (except container registry).

### `init`

Creates k3d registry and custer, and calls `devspace run activate`.

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

### `minimal`

Creates a minimal one node cluster.

### `runtime-nodes`

Creates a cluster with one master and four agents,
two agents are labeled as edgefarm main-runtime nodes and the others are
labeled as edgefarm edge-runtime nodes.
