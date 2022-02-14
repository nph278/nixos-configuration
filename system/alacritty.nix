{ theme }:

let 
  colors = theme.colors;
  font = theme.font;
in
{
  enable = true;
  settings = {
    font = {
      normal = {
        family = font;
        style = "Regular";
      };
      bold = {
        family = font;
        style = "Bold";
      };
      italic = {
        family = font;
        style = "Italic";
      };
      bold_italic = {
        family = font;
        style = "Bold Italic";
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
  };
};
