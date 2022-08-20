{ pkgs }:

let
  theme = import ./theme.nix;
in

with theme.colors; "${pkgs.swaylock}/bin/swaylock -f -i ${./assets/bg.png} -s fill --font ${theme.font} --bs-hl-color ${yellow} --inside-color ${black} --inside-clear-color ${black} --inside-ver-color ${black} --inside-wrong-color ${black} --key-hl-color ${green} --ring-ver-color ${yellow} --ring-color ${green} --ring-clear-color ${yellow} --ring-wrong-color ${red} --text-color ${white} --text-ver-color ${yellow} --text-wrong-color ${red}"
