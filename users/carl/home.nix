{ pkgs, unstablePkgs, lib, system, ... }:

{
  home.packages = with pkgs; [
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
    gnuapl

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

  # QT
  qt.enable = true;
  qt.style.name = "adwaita-dark";

  home.stateVersion = "21.11";
}

