let
  theme = import ./theme.nix;
  colors = theme.colors;
  font = theme.font;
in
{
  enable = true;

  settings = {
    cursor = colors.blue;
    cursor_text_color = colors.black;
    enable_audio_bell = false;

    foreground = colors.white;
    background = colors.black;

    color0 = colors.black;
    color1 = colors.red;
    color2 = colors.green;
    color3 = colors.yellow;
    color4 = colors.blue;
    color5 = colors.magenta;
    color6 = colors.cyan;
    color7 = colors.white;

    shell = "zsh";
  };

  font = {
    name = font;
    size = 11;
  };
}
