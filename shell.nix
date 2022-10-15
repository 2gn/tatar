/* for nix environment selector vscode*/
{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    cargo
    rustup
    rust-analyzer
  ];
}
