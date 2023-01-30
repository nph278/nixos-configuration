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
    ./rust
    ./alacritty
    ./cligames
    ./btop
    ./mpv
    ./direnv
    ./git
    ./prolog
    ./fun
    ./rpi-pico
    ./prismlauncher
    ./racket
    # ./dwl
  ];

  home.packages = with pkgs; [
    # Multimedia
    imv
    ffmpeg
    beets
    flac

    # Cursor theme
    capitaine-cursors

    # Dev
    gh
    fzf
    ripgrep
    cmake
    python3
    gnuapl
    fasm
    nasm
    miniserve

    # Lua
    unstablePkgs.sumneko-lua-language-server
    unstablePkgs.luaformatter

    # Nix
    unstablePkgs.rnix-lsp
    unstablePkgs.statix
    vulnix

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
    # firefox

    # Other
    trash-cli
    keepassxc
    xdg-utils
    tree
    jq
    yt-dlp
    logisim-evolution

    qemu
  ];

  # Enable fonts
  fonts.fontconfig.enable = lib.mkForce true;

  # QT
  qt.enable = true;
  qt.style.name = "adwaita-dark";

  home.stateVersion = "21.11";
}

