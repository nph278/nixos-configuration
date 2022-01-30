{pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  name = "dev";
  buildInputs = with pkgs; [
    # Rust
    rustc
    cargo
    clippy
    rustfmt
    rust-analyzer

    # Neovim
    neovim
  ];
}
