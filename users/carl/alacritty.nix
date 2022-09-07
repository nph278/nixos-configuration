let
  theme = import ./theme.nix;
  font = "Scientifica";
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

      size = 14;
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
        inherit black red green yellow blue magenta cyan white;
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
