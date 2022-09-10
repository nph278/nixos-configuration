{ pkgs, unstablePkgs, lib, fenix, system, ... }:

let
  rustToolchain = fenix.packages.${system}.stable;
in
{
  imports = [
    ./zsh
    ./qutebrowser
    ./nvim
    ./alacritty.nix
    ./cligames.nix
    ./sway.nix
    ./swaylock.nix
    ./btop.nix
  ];

  # Git config
  programs.git = {
    enable = true;
    userEmail = "carllegrone@protonmail.com";
    userName = "nph278";
  };

  home.packages = with pkgs; [
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
    gh
    fzf
    ripgrep
    xdg-utils

    # Lua
    unstablePkgs.sumneko-lua-language-server
    unstablePkgs.luaformatter

    # Nix
    unstablePkgs.rnix-lsp
    unstablePkgs.statix
    vulnix

    # Rust
    rustToolchain.rustc
    rustToolchain.cargo
    rustToolchain.clippy
    rustToolchain.rustfmt
    rustToolchain.rust-src
    unstablePkgs.rust-analyzer

    # funny stuff
    cowsay
    fortune
    figlet

    # Info
    neofetch
    pfetch
    htop

    # Fonts
    scientifica
    (nerdfonts.override { fonts = [ "VictorMono" ]; })
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk

    # Other
    trash-cli
    pulsemixer
    keepassxc
    tree
    ranger
    jq
  ];

  # Enable fonts
  fonts.fontconfig.enable = lib.mkForce true;

  home.stateVersion = "21.11";
}

