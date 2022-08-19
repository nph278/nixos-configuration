{ pkgs, unstablePkgs }:

let
  rustPkgs = unstablePkgs.rust.packages.stable;
in
{
  # Sway
  programs.zsh = (import ./z_shell.nix) { inherit pkgs; inherit rustPkgs; };
  programs.alacritty = (import ./alacritty.nix);
  programs.qutebrowser = (import ./qutebrowser.nix);
  wayland.windowManager.sway = (import ./sway.nix) { inherit pkgs; };

  programs.git = {
    enable = true;
    userEmail = "carllegrone@protonmail.com";
    userName = "nph278";
  };

  home.packages = with pkgs; [
    # Admin
    neofetch
    pfetch
    htop
    trash-cli
    pulsemixer
    keepassxc
    tree
    ranger # Replace with lf? How does it even work? C for now I guess?

    # Sway
    swaylock
    swayidle
    wl-clipboard
    grim
    sway-contrib.grimshot

    # Multimedia
    imv
    mpv

    # Cursor theme
    capitaine-cursors

    # Dev
    direnv
    gh
    fzf
    ripgrep
    xdg-utils

    # Lua
    unstablePkgs.sumneko-lua-language-server
    unstablePkgs.luaformatter

    # Nix
    unstablePkgs.rnix-lsp

    # Rust
    rustPkgs.rustc
    rustPkgs.cargo
    rustPkgs.clippy
    rustPkgs.rustfmt
    unstablePkgs.rust-analyzer

    # Rust dyndeps
    # unstablePkgs.openssl
    # unstablePkgs.pkg-config
  ];
}

