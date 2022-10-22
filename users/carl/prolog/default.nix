{ pkgs, ... }:

{
  home.packages = with pkgs; [ scryer-prolog ];

  home.file.".scryerrc".text = ''
    :- use_module(library(lists)).
    :- use_module(library(clpz)).
    :- use_module(library(dcgs)).
    :- use_module(library(reif)).
    :- set_prolog_flag(double_quotes, chars).
  '';
}
