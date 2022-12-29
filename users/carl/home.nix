{ pkgs, unstablePkgs, lib, system, ... }:

{
  ###
  ### Comment means pkgs added, but configs not.
  ###

  imports = [
    # ./zsh
    # ./w3m
    # ./sway
    # ./qutebrowser
    ./nvim
    # ./tuir
    # ./mailcap
    # ./rust
    # ./alacritty
    # ./btop
    # ./mpv
    ./direnv
    # ./git
    # ./prolog
    ### ./dwl # especial
  ];
}

