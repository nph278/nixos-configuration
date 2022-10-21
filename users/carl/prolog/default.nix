{ pkgs, ... }:

{
  home.packages = with pkgs; [ scryer-prolog ];

  home.file.".scryerrc".text = ''
    :- use_module(library(lists)).
  '';
}
