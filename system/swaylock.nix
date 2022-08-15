{ pkgs, theme }:

let
  font = theme.font;
  colors = theme.colors;
in

"${pkgs.swaylock}/bin/swaylock -f -i ${./assets/bg.png} -s fill --font ${font} --bs-hl-color ${colors.yellow} --inside-color ${colors.black} --inside-clear-color ${colors.black} --inside-ver-color ${colors.black} --inside-wrong-color ${colors.black} --key-hl-color ${colors.green} --ring-ver-color ${colors.yellow} --ring-color ${colors.green} --ring-clear-color ${colors.yellow} --ring-wrong-color ${colors.red} --text-color ${colors.white} --text-ver-color ${colors.yellow} --text-wrong-color ${colors.red}"
