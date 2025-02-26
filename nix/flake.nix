{
  description = "tcarrio/bun-nix-template";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShells = {
          default = pkgs.mkShell {
            packages = with pkgs; [
                bun
                biome

                git

                go-task
                opentofu
                sops
            ];

            PROJECT_NAME = "bun-nix-template";

            shellHook = ''
                echo $ Started devshell for $PROJECT_NAME
                echo
            '';
          };
        };
      }
    );
}