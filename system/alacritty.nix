let
  theme = import ./theme.nix;
  colors = theme.colors;
  font = theme.font;
in
{
  enable = true;
  settings = {
    env = {
      THEME_BLACK = colors.black;
      THEME_RED = colors.red;
      THEME_GREEN = colors.green;
      THEME_YELLOW = colors.yellow;
      THEME_BLUE = colors.blue;
      THEME_MAGENTA = colors.magenta;
      THEME_CYAN = colors.cyan;
      THEME_WHITE = colors.white;
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
        background = colors.black;
        foreground = colors.white;
      };

      cursor = {
        text = "CellBackground";
        cursor = colors.blue;
      };

      selection = {
        text = "CellBackground";
        background = colors.black;
      };

      normal = {
        black = colors.black;
        red = colors.red;
        green = colors.green;
        yellow = colors.yellow;
        blue = colors.blue;
        magenta = colors.magenta;
        cyan = colors.cyan;
        white = colors.white;
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
