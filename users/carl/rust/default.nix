{ inputs, system, unstablePkgs, ... }:

{
  home.packages = with inputs.fenix.packages.${system}.stable; [
    rustc
    cargo
    clippy
    rustfmt
    rust-src
    unstablePkgs.rust-analyzer
  ];
}
