{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cowsay
    fortune
    figlet
  ];
}
