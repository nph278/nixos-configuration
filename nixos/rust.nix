{ inputs, system, pkgs, unstablePkgs, ... }:

with inputs.fenix.packages.${system}.stable; [
  rustc
  cargo
  clippy
  rustfmt
  rust-src
  unstablePkgs.rust-analyzer
  pkgs.llvmPackages.bintools
]
