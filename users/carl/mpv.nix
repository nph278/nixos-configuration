{ pkgs, ... }:

{
  home.packages = [
    (pkgs.mpv.override {
      scripts = with pkgs.mpvScripts; [ thumbnail ];
    })
  ];

  # Main configuration
  home.file.".config/mpv/mpv.conf".text = ''
    osc=no
  '';

  # Input configuration
  home.file.".config/mpv/input.conf".text = ''
    h seek -5
    l seek 5
    j add volume -5
    k add volume 5
    J add speed -0.05
    K add speed 0.05
  '';
}
