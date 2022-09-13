{ pkgs, ... }:

{
  home.packages = [
    pkgs.w3m
  ];

  home.file.".w3m/config".source = ./config;
  home.file.".w3m/keymap".source = ./keymap;
}
