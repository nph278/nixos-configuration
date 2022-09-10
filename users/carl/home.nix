{ pkgs, unstablePkgs, lib, fenix, system, ... }:

let
  rustToolchain = fenix.packages.${system}.stable;
in
{
  imports = [
    ./zsh
    ./sway
    ./qutebrowser
    ./nvim
    ./alacritty.nix
    ./cligames.nix
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

    # Audio
    pulsemixer
    playerctl

    # Other
    trash-cli
    keepassxc
    tree
    jq
  ];

  # Enable fonts
  fonts.fontconfig.enable = lib.mkForce true;

  home.stateVersion = "21.11";
}

