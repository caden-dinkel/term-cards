{
  description = "Rust development environment";

  inputs = {
    nixpkgs.url = "github:Nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
       Medieval = "test";
      in
      {
        devShells.default = pkgs.mkShell {
          # Tools available in the environment
          nativeBuildInputs = with pkgs; [
            pkg-config
          ];

          buildInputs = with pkgs; [
            cargo
            rustc
            rust-analyzer
            rustfmt
            clippy
          ];
        };
      }
    );
}
