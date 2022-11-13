{
  description = "A rust devShell";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = {
    self,
    nixpkgs,
    rust-overlay,
    flake-utils
  }:
    flake-utils.lib.eachDefaultSystem (system:
      let overlays = [ (import rust-overlay)];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in
      with pkgs;
      {
        devShells.default = mkShell {
          buildInputs = [
            nodePackages.yarn
            pkg-config
            fontconfig
            openssl
            zlib
            libiconv
            darwin.apple_sdk.frameworks.CoreGraphics
            darwin.apple_sdk.frameworks.Cocoa
            darwin.apple_sdk.frameworks.Foundation
            darwin.apple_sdk.frameworks.WebKit
            rust-bin.beta.latest.default
          ];
          shellHook = ''
            CI=true
          '';
        };
      }
    );
}
