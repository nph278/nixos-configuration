let
  theme = import ./theme.nix;
  font = theme.font;
in
with theme.colors; {
  enable = true;
  settings = {
    env = {
      THEME_BLACK = black;
      THEME_RED = red;
      THEME_GREEN = green;
      THEME_YELLOW = yellow;
      THEME_BLUE = blue;
      THEME_MAGENTA = magenta;
      THEME_CYAN = cyan;
      THEME_WHITE = white;
    };

    font = {
      normal = {
        family = font;
        style = "regular";
      };
      bold = {
        family = font;
        style = "bold";
      };
      italic = {
        family = font;
        style = "italic";
      };
      bold_italic = {
        family = font;
        style = "bold italic";
      };

      size = 11;
    };

    colors = {
      primary = {
        background = black;
        foreground = white;
      };

      cursor = {
        text = "CellBackground";
        cursor = blue;
      };

      selection = {
        text = "CellBackground";
        background = black;
      };

      normal = {
        black = black;
        red = red;
        green = green;
        yellow = yellow;
        blue = blue;
        magenta = magenta;
        cyan = cyan;
        white = white;
      };
    };

    shell = {
      program = "zsh";
    };

    window = {
      background_opacity = 0.5;
    };
  };
}
