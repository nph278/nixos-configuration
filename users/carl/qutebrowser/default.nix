{ pkgs, ... }:

let
  theme = import ../theme.nix;
  font = "10pt Victor Mono Nerd Font";

  # Add theme colors for user stylesheet
  fullStylesheet = pkgs.writeTextFile
    {
      name = "fullStylesheet.css";
      text = with theme.colors.normal; ''
        :root {
          --black: ${black};
          --red: ${red};
          --green: ${green};
          --yellow: ${yellow};
          --blue: ${blue};
          --magenta: ${magenta};
          --cyan: ${cyan};
          --white: ${white};
        }

        ${builtins.readFile ./stylesheet.css}
      '';
    };
in
with theme.colors.normal; {
  programs.qutebrowser = {
    enable = true;
    settings = {
      colors = {
        webpage.preferred_color_scheme = "dark";

        hints = {
          bg = yellow;
          fg = black;
          match.fg = red;
        };

        completion = {
          even.bg = black;
          odd.bg = black;
          fg = white;
          match.fg = green;

          item.selected = {
            bg = blue;
            fg = black;
            border.top = blue;
            border.bottom = blue;
            match.fg = black;
          };

          scrollbar.bg = black;
          scrollbar.fg = white;

          category = {
            bg = black;
            fg = red;
            border.top = black;
            border.bottom = black;
          };
        };

        downloads = {
          bar.bg = black;
          error.bg = red;
          error.fg = black;
          start.bg = blue;
          start.fg = black;
          stop.bg = green;
          stop.fg = black;
        };

        messages = {
          error = {
            bg = red;
            fg = black;
            border = red;
          };

          warning = {
            bg = yellow;
            fg = black;
            border = yellow;
          };

          info = {
            bg = blue;
            fg = black;
            border = blue;
          };
        };

        prompts = {
          bg = blue;
          fg = black;
          border = blue;
          selected.bg = blue;
          selected.fg = white;
        };

        statusbar = {
          caret = {
            bg = magenta;
            fg = black;
            selection.bg = magenta;
            selection.fg = black;
          };

          command = {
            bg = black;
            fg = white;
            private.bg = black;
            private.fg = white;
          };

          insert = {
            bg = green;
            fg = black;
          };

          normal = {
            bg = black;
            fg = white;
          };

          passthrough = {
            bg = blue;
            fg = black;
          };

          private = {
            bg = red;
            fg = black;
          };

          progress.bg = white;

          url = {
            fg = white;
            hover.fg = blue;
            error.fg = red;
            warn.fg = yellow;
            success.http.fg = yellow;
            success.https.fg = green;
          };
        };

        tabs = {
          bar.bg = black;

          even.bg = black;
          odd.bg = black;
          even.fg = white;
          odd.fg = white;

          indicator = {
            error = red;
            start = blue;
            stop = green;
          };

          selected = {
            even.bg = blue;
            odd.bg = blue;
            even.fg = black;
            odd.fg = black;
          };

          pinned = {
            even.bg = black;
            odd.bg = black;
            even.fg = white;
            odd.fg = white;
            selected = {
              even.bg = blue;
              odd.bg = blue;
              even.fg = black;
              odd.fg = black;
            };
          };
        };
      };

      fonts = {
        completion.category = font;
        completion.entry = font;
        downloads = font;
        hints = font;
        keyhint = font;
        messages.error = font;
        messages.info = font;
        messages.warning = font;
        prompts = font;
        statusbar = font;
        tabs.selected = font;
        tabs.unselected = font;

        web.family = {
          cursive = "Noto";
          fantasy = "Noto";
          fixed = "Scientifica";
          sans_serif = "Noto";
          serif = "Noto";
          standard = "Noto";
        };
      };

      fileselect = {
        handler = "external";
        single_file.command = [ "alacritty" "-e" (toString ./filepicker.sh) "0" "{}" ];
        multiple_files.command = [ "alacritty" "-e" (toString ./filepicker.sh) "0" "{}" ];
        folder.command = [ "alacritty" "-e" (toString ./filepicker.sh) "1" "{}" ];
      };

      auto_save.session = true;
      downloads.location.directory = "~/Downloads";
      hints.chars = "qwertyuiopasdfghjklzxcvbnm";
      editor.command = [ "alacritty" "-e" "nvim" "{file}" ];

      content = {
        user_stylesheets = "${fullStylesheet}";
      };
    };

    quickmarks = {
      r = "reddit.com";
      ra = "reddit.com/r/all";
      yt = "youtube.com";
      gh = "github.com";
      pm = "https://mail.proton.me/u/0/inbox";
      yc = "news.ycombinator.com";
      wk = "en.wikipedia.org";
    };

    keyBindings.normal = {
      eu = "edit-url";
      et = "edit-text";
      wk = "jseval document.querySelector('head').innerHTML += '<style>* {background-color: ${black} !important; color: ${white} !important; border-color: ${white} !important; font-family: monospace !important;} a { color: ${blue} !important;}</style>'";
      abe = "set content.blocking.enabled true";
      abd = "set content.blocking.enabled false";
    };
  };
}

