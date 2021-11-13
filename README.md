# devspace.base

Collection of devspace-based environments for reusable tasks.

## how to use

the environments folder contains devspace definitions for components
recurring in edgefarm development. These environments allow you to quickly
and easily create the resources you need. Detailed information can also be
found in these folders in the corresponding `README.md` files.

These environments can be included in derived devspace environments via
`dependencies`.

### Commands

These environments bring, if necessary, a set of standard commands that can
be used in derived environments via `devspace run <<DEPENDENCY>>.<<COMMAND>>`.

The public commands are documented in the corresponding `README.MD`.
(Do not use commands prefixed with `internal-`, may changed over time,
only for internal usage)

### Profiles

Profiles are used to override the default behavior of the components.

This can be specified using `profile: <<profile name>>` when including
the dependency.

Predefined profiles are documented in the corresponding `README.MD`.

## Variables

Environments can define configurable variables that affect the behavior of
the environment. These can be set via environment variables or via `.env`
file (but are valid globally, even if the environment is included multiple
times).

Predefined variables are documented in the corresponding `README.MD` file.
