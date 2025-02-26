# infrastructure

Manage various infrastructure-as-code definitions with OpenTofu.

## Overview

There are several top-level directories available out of the box:

- `backends/`
- `cf-example/`
- `deploy/`

### backends

Contains backend configurations you can use for an OpenTofu [backend](https://opentofu.org/docs/language/settings/backends/configuration/), which defines where OpenTofu stores its state data files.

This currently contains only a Cloudflare R2 backend configuration. More may be added, this is just what I have used.

### cf-example

The sample stack included in the template. This uses Cloudflare for the backend state and configures both Cloudflare and AWS providers- the latter actually allowing you to reuse `aws` S3 provider resources, but having them backed by Cloudflare R2.

### deploy

An empty directory, but this is where you would store SOPS-encrypted environment files to configure secret values. This is used in tandem with `sops exec-env` to decrypt a file, parse the keys as environment variables, and execute a script with that environment context. This is a solid way to securely execute with secrets entirely in-memory.

You will need to configure SOPS entirely on your own though. You can integrate with Vault, Google Cloud, AWS, PGP, and age, to name what just I'm aware of.