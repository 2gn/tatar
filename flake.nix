{
  description = "A youtube music client made with tauri";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
    rust-overlay.url = "github:oxalica/rust-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, rust-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in
        with pkgs;
        {
          devShells.default = mkShell {
            # use system clang by default.
            shellHook = ''
              export PATH="/usr/bin:$PATH";
            '';
            buildInputs = [
              openssl
              pkg-config
              yarn
              rust-bin.beta.latest.default
            ];
          };
        }
    );
}