{ pkgs, ... }:

{
  home.packages = [
    pkgs.mpv
  ];

  home.file.".config/mpv/input.conf".text = ''
    h seek -5
    l seek 5
    j add volume -5
    k add volume 5
  '';
}
