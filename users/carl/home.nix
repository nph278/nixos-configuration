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
    ./tuir
    ./mailcap
    ./alacritty.nix
    ./cligames.nix
    ./btop.nix
    ./mpv.nix
    ./hn-cli.nix
    ./direnv.nix
    # ./dwl
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
    ffmpeg

    # Cursor theme
    capitaine-cursors

    # Dev
    gh
    fzf
    ripgrep

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

    # Web
    tmpmail
    w3m

    # Other
    trash-cli
    keepassxc
    xdg-utils
    tree
    jq
  ];

  # Enable fonts
  fonts.fontconfig.enable = lib.mkForce true;

  home.stateVersion = "21.11";
}

