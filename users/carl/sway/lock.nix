{ ... }:

let
  theme = import ../theme.nix;
in

{
  home.file.".config/swaylock/config".text = with theme.colors.normal; ''
    image=${../assets/bg.png}
    scaling=fill
    font=Scientifica
    bs-hl-color=${yellow}
    inside-color=${black}
    inside-clear-color=${black}
    inside-ver-color=${black}
    inside-wrong-color=${black}
    key-hl-color=${green}
    ring-ver-color=${yellow}
    ring-color=${green}
    ring-clear-color=${yellow}
    ring-wrong-color=${red}
    text-color=${white}
    text-ver-color=${yellow}
    text-wrong-color=${red}
  '';
}
