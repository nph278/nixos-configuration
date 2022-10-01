{ pkgs, unstablePkgs, lib, system, ... }:

{
  imports = [
    ./zsh
    ./w3m
    ./sway
    ./qutebrowser
    ./nvim
    ./tuir
    ./mailcap
    ./rust.nix
    ./alacritty.nix
    ./cligames.nix
    ./btop.nix
    ./mpv.nix
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
    cmake
    gcc-arm-embedded
    python3

    # Lua
    unstablePkgs.sumneko-lua-language-server
    unstablePkgs.luaformatter

    # Nix
    unstablePkgs.rnix-lsp
    unstablePkgs.statix
    vulnix

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
    pandoc

    # RPI Pico
    picotool

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

