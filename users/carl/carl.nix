{ pkgs }:

{
  # Sway
  programs.zsh = (import ./z_shell.nix) { inherit pkgs; };
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

    # Dev
    direnv
    gh
    fzf
    xdg-utils

    # Multimedia
    imv
    mpv

    # Cursor theme
    capitaine-cursors
  ];
}

