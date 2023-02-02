{ pkgs, ... }:

{
  home.packages = with pkgs; [
    abcde
  ];

  home.file.".abcde.conf".text = ''
    OUTPUTTYPE=flac
  '';
}
