{ pkgs, ... }:

{
  home.packages = with pkgs; [
    picotool
    gcc-arm-embedded
  ];
}
