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
    # ./git
    # ./prolog
    ### ./dwl # especiu~al
  ];
}

