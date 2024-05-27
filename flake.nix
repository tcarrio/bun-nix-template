{
  description = "EE/Mercantile";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShells = {
          default = pkgs.mkShell {
            packages = with pkgs; [
                # General dev tools
                git

                # NodeJS development
                nodejs_18
                yarn

                # Infrastructure-as-Code tools
                opentofu
            ];

            PROJECT_NAME = "Mercantile";

            env = {
              PRISMA_QUERY_ENGINE_LIBRARY = "${pkgs.prisma-engines}/lib/libquery_engine.node";
              PRISMA_QUERY_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/query-engine";
              PRISMA_SCHEMA_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/schema-engine";
            };

            shellHook = ''
                echo $ Started devshell for $PROJECT_NAME
                echo
                echo Prisma has been configured from Nixpkgs
                echo
            '';
          };
        };
      }
    );
}