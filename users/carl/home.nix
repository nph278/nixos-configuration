{ pkgs, unstablePkgs, lib }:

let
  rustPkgs = unstablePkgs.rust.packages.stable;
  cligames = import ./cligames.nix { inherit rustPkgs; inherit pkgs; };
in
{
  programs.zsh = import ./z_shell.nix { inherit pkgs; inherit rustPkgs; };
  programs.neovim = import ./nvim.nix { inherit unstablePkgs; };
  programs.qutebrowser = import ./qutebrowser.nix { inherit pkgs; };
  programs.alacritty = import ./alacritty.nix;
  wayland.windowManager.sway = import ./sway.nix { inherit pkgs; };

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
    rustPkgs.rustc
    rustPkgs.cargo
    rustPkgs.clippy
    rustPkgs.rustfmt
    unstablePkgs.rust-analyzer

    # Games
    cligames.snake
    cligames.r2048

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

