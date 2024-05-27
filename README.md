# node-nix-template

This project provides a starting point for a NodeJS project supported by Nix and direnv for consistent and reproducible build and development environments with OpenTofu infrastructure-as-code support.

## Tech

- NodeJS
- TypeScript
- Yarn
- Nix
- Direnv
- OpenTofu

### NodeJS

It's NodeJS! The famous single-threaded event-loop JavaScript runtime powered by the V8 engine.

### TypeScript

Have you ever been like "what the heck is this variable? what can I do with it? what will be there? what might be there?" Well you may have wanted to have some better typing. TypeScript takes the largely unbounded ECMAScript and makes it significantly more tenable to understand and work with as projects expand (or don't). It doesn't alter the runtime at all but exists at the compilation layer- providing static type safety only, but more safe than JS alone.

### Yarn

A Node package manager. You could swap this out for pnpm, npm, etc. It has good out-of-the-box support for workspaces which I often find useful.

### Nix

The declarative and functional package manager and language: Nix. This is a minimal flake that provided just the development layer tier, though Nix can be utilized for bundling and deploying packages to NixOS environments too.

### Direnv

A useful development tool for augmenting your shell for projects, allowing you to load environment variables and tools transparently by simply changing into a project directory. This, along with the builtin support for Nix with `use flake`, allows anyone with `direnv` and `nix` to immediately enter a shell with the exact versions of tools for the project.

### OpenTofu

A free and open source fork of Terraform. This is used for defining and maintaining infrastructure as code.
