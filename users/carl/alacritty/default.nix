{ pkgs, ... }:
let
  theme = import ../theme.nix;
  font = "Scientifica";
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      env = with theme.colors; {
        THEME_BLACK = normal.black;
        THEME_RED = normal.red;
        THEME_GREEN = normal.green;
        THEME_YELLOW = normal.yellow;
        THEME_BLUE = normal.blue;
        THEME_MAGENTA = normal.magenta;
        THEME_CYAN = normal.cyan;
        THEME_WHITE = normal.white;
        THEME_BRIGHT_BLACK = bright.black;
        THEME_BRIGHT_RED = bright.red;
        THEME_BRIGHT_GREEN = bright.green;
        THEME_BRIGHT_YELLOW = bright.yellow;
        THEME_BRIGHT_BLUE = bright.blue;
        THEME_BRIGHT_MAGENTA = bright.magenta;
        THEME_BRIGHT_CYAN = bright.cyan;
        THEME_BRIGHT_WHITE = bright.white;
        # THEME_DIM_BLACK = dim.black;
        # THEME_DIM_RED = dim.red;
        # THEME_DIM_GREEN = dim.green;
        # THEME_DIM_YELLOW = dim.yellow;
        # THEME_DIM_BLUE = dim.blue;
        # THEME_DIM_MAGENTA = dim.magenta;
        # THEME_DIM_CYAN = dim.cyan;
        # THEME_DIM_WHITE = dim.white;

        PICO_SDK_PATH = "${pkgs.pico-sdk}/lib/pico-sdk";
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
        primary = with theme.colors.normal; {
          background = black;
          foreground = white;
        };

        cursor = {
          text = "CellBackground";
          cursor = theme.colors.normal.blue;
        };

        selection = {
          text = "CellBackground";
          background = theme.colors.normal.black;
        };

        inherit (theme.colors) normal bright;
      };

      shell = {
        program = "${pkgs.zsh}/bin/zsh";
      };

      window = {
        opacity = 0.9;
      };
    };
  };
}
