{ pkgs, ... }:

{
  home.packages = [
    pkgs.tuir
  ];

  home.file.".config/tuir/tuir.cfg".source = ./tuir.conf;
}
