let
  theme = import ./theme.nix;
  font = theme.font;
in
with theme.colors; {
  enable = true;

  settings = {
    cursor = blue;
    cursor_text_color = black;
    enable_audio_bell = false;

    foreground = white;
    background = black;

    color0 = black;
    color1 = red;
    color2 = green;
    color3 = yellow;
    color4 = blue;
    color5 = magenta;
    color6 = cyan;
    color7 = white;

    shell = "zsh";
  };

  font = {
    name = font;
    size = 11;
  };
}
