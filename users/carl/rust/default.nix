{ inputs, system, pkgs, unstablePkgs, ... }:

{
  home.packages = with inputs.fenix.packages.${system}.stable; [
    rustc
    cargo
    clippy
    rustfmt
    rust-src
    unstablePkgs.rust-analyzer
    pkgs.llvmPackages.bintools
  ];

  home.file.".cargo/config.toml".source = ./config.toml;
}
