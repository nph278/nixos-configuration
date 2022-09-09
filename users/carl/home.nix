{ pkgs, unstablePkgs, lib, fenix, system, ... }:

let
  rustToolchain = fenix.packages.${system}.stable;
in
{
  imports = [
    ./zsh
    ./nvim.nix
    ./qutebrowser.nix
    ./alacritty.nix
    ./cligames.nix
    ./sway.nix
    ./swaylock.nix
  ];

  # Git config
  programs.git = {
    enable = true;
    userEmail = "carllegrone@protonmail.com";
    userName = "nph278";
  };

  # Automatically start ssh + sway
  programs.bash.initExtra = ''
    if [[ $TERM == linux ]]; then
      eval "$(ssh-agent -s)"
      sway
    fi
  '';

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

    # Fonts
    scientifica
    (nerdfonts.override { fonts = [ "VictorMono" ]; })
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
  ];

  # Enable fonts
  fonts.fontconfig.enable = lib.mkForce true;

  home.stateVersion = "21.11";
}

