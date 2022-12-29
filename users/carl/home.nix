{ pkgs, unstablePkgs, lib, system, ... }:

{
  imports = [
    # ./zsh
    # ./w3m
    ./sway
    # ./qutebrowser
    ./nvim
    # ./tuir
    # ./mailcap
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
}

