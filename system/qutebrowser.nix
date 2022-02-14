{ theme }:

let
  colors = theme.colors;
  font = theme.font;
  qbFont = "${toString theme.fontSize}pt ${font}";
in
{
  enable = true;
  settings = {
    colors = {
      webpage.preferred_color_scheme = "dark";

      hints = {
        bg = colors.yellow;
        fg = colors.black;
        match.fg = colors.red;
      };

      completion = {
        even.bg = colors.black;
        odd.bg = colors.black;
        fg = colors.white;
        match.fg = colors.green;
        
        item.selected = {
          bg = colors.blue;
          fg = colors.black;
          border.top = colors.blue;
          border.bottom = colors.blue;
          match.fg = colors.black;
        };

        scrollbar.bg = colors.black;
        scrollbar.fg = colors.white;

        category = {
          bg = colors.black;
          fg = colors.red;
          border.top = colors.black;
          border.bottom = colors.black;
        };
      };

      downloads = {
        bar.bg = colors.black;
        error.bg = colors.red;
        error.fg = colors.black;
        start.bg = colors.blue;
        start.fg = colors.black;
        stop.bg = colors.green;
        stop.fg = colors.black;
      };

      messages = {
        error = {
          bg = colors.red;
          fg = colors.black;
          border = colors.red;
        };

        warning = {
          bg = colors.yellow;
          fg = colors.black;
          border = colors.yellow;
        };

        info = {
          bg = colors.blue;
          fg = colors.black;
          border = colors.blue;
        };
      };

      prompts = {
        bg = colors.blue;
        fg = colors.black;
        border = colors.blue;
        selected.bg = colors.blue;
        selected.fg = colors.white;
      };

      statusbar = {
        caret = {
          bg = colors.magenta;
          fg = colors.black;
          selection.bg = colors.magenta;
          selection.fg = colors.black;
        };

        command = {
          bg = colors.black;
          fg = colors.white;
          private.bg = colors.black;
          private.fg = colors.white;
        };

        insert = {
          bg = colors.green;
          fg = colors.black;
        };

        normal = {
          bg = colors.black;
          fg = colors.white;
        };

        passthrough = {
          bg = colors.blue;
          fg = colors.black;
        };

        private = {
          bg = colors.red;
          fg = colors.black;
        };

        progress.bg = colors.white;

        url = {
          fg = colors.white;
          hover.fg = colors.blue;
          error.fg = colors.red;
          warn.fg = colors.yellow;
          success.http.fg = colors.yellow;
          success.https.fg = colors.green;
        };
      };

      tabs = {
        bar.bg = colors.white;

        even.bg = colors.black;
        odd.bg = colors.black;
        even.fg = colors.white;
        odd.fg = colors.white;

        indicator = {
          error = colors.red;
          start = colors.blue;
          stop = colors.green;
        };
        
        selected = {
          even.bg = colors.blue;
          odd.bg = colors.blue;
          even.fg = colors.black;
          odd.fg = colors.black;
        };
        
        pinned = {
          even.bg = colors.black;
          odd.bg = colors.black;
          even.fg = colors.white;
          odd.fg = colors.white;
          selected = {
            even.bg = colors.blue;
            odd.bg = colors.blue;
            even.fg = colors.black;
            odd.fg = colors.black;
          };
        };
      };
    };

    fonts = {
      completion.category = qbFont;
      completion.entry = qbFont;
      downloads = qbFont;
      hints = qbFont;
      keyhint = qbFont;
      messages.error = qbFont;
      messages.info = qbFont;
      messages.warning = qbFont;
      prompts = qbFont;
      statusbar = qbFont;
      tabs.selected = qbFont;
      tabs.unselected = qbFont;

      web.family = {
        cursive = "Noto";
        fantasy = "Noto";
        fixed = font;
        sans_serif = "Noto";
        serif = "Noto";
        standard = "Noto";
      };
    };

    quickmarks = {
      r = "reddit.com";
      yt = "youtube.com";
      gh = "github.com"; 
    };

    auto_save.session = true;
    downloads.location.directory = "~/Downloads";
  };
}
