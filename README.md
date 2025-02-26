# bun-nix-template

This project provides a starting point for a Bun project supported by Nix and direnv for consistent and reproducible build and development environments with OpenTofu infrastructure-as-code support.

## Tech

- [Bun]
- [TypeScript]
- [Nix]
- [Direnv]
- [OpenTofu]

### Bun

It's Bun! The new runtime written in [Zig] and powered by the [JavaScriptCore] engine. It supports implicit transpilation of TypeScript so you can execute `.ts` files directly. Bun provides an entire suite of tools, not just the runtime itself. This includes a standard library, test suite, package manager, and much more. Also, it's really fast!

### TypeScript

Have you ever been like "What the heck is this variable? What can I do with it? What will be there? What might be there?" Well you may have wanted to have some better typing. JavaScript's support for typing is not even close to what can be accomplished with [TypeScript], which takes the largely unbounded ECMAScript and makes it significantly more tenable to understand and work with as projects expand. It does not alter the runtime at all, but exists at the compilation layer- providing static type safety only, but more safe than JS alone.

### Nix

The declarative and functional package manager and language: [Nix]. This repository includes a minimal flake that provides _only_ the development layer tier, though Nix could be utilized for bundling and deploying packages to NixOS environments too.

### Direnv

A useful development tool for augmenting your shell for projects, allowing you to load environment variables and tools transparently by simply changing into a project directory. This, along with the builtin support for Nix with `use flake`, allows anyone with `direnv` and `nix` to immediately enter a shell with the exact versions of tools for the project.

### VS Code

This template provides recommendations and settings for the [Nix Env Selector extension] which utilizes the `shell.nix` file to provide an identical environment for the VS Code editor as the `direnv` shell would. This parity ensures you aren't references different versions of binaries due to variance in your `code` process's `$PATH` and the shell's. 

### OpenTofu

A free and open source fork of Terraform. [OpenTofu] is used for defining and maintaining infrastructure as code.

### SOPS

The [SOPS] tool is used for managing secrets for IaC. This is included in the dev shell, but otherwise initial configuration is deferred to the template user. 

### Taskfile

Used in the `infrastructure` directory, a [Taskfile] consolidates task runner logic similar to where you might reach for a Makefile. It is simple. flexible, written in Go, and uses a YAML file for configuration.

<!-- References -->
[Bun]: https://bun.sh
[Nix Env Selector extension]: https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector
[JavaScriptCore]: https://developer.apple.com/documentation/javascriptcore
[Zig]: https://ziglang.org/
[TypeScript]: https://www.typescriptlang.org/
[Nix]: https://nixos.org/
[Direnv]: https://direnv.net/
[OpenTofu]: https://opentofu.org/
[SOPS]: https://getsops.io/
[Taskfile]: https://taskfile.dev/