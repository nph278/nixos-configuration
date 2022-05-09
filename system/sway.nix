{ pkgs, theme }:

let
  colors = theme.colors;
  swayFont = {
    names = [ theme.font ];
  };

  term = "alacritty";
  lock = "\"${pkgs.swaylock}/bin/swaylock -f -c #000000\"";
in
{
  enable = true;
  wrapperFeatures.gtk = true;
  config = {
    fonts = swayFont;
    gaps.inner = 5;

    input."*" = {
      natural_scroll = "enabled";
      middle_emulation = "enabled";
      repeat_delay = "200";
      repeat_rate = "50";
      xkb_layout = "us";
      xkb_options = "caps:escape";
    };

    output."*" = {
      bg = "${colors.black} solid_color";
    };

    bars = [{
      fonts = swayFont;
      statusCommand = "while date +'%d -> %r     '; do sleep 1; done";
      position = "top";
      colors = {
        statusline = colors.white;
        background = colors.black;
        focusedWorkspace = {
          border = colors.black;
          background = colors.blue;
          text = colors.black;
        };
        activeWorkspace = {
          border = colors.black;
          background = colors.red;
          text = colors.black;
        };
        inactiveWorkspace = {
          border = colors.black;
          background = colors.black;
          text = colors.white;
        };
      };
    }];

    keybindings = {
      "Control+Shift+q" = "kill";

      "Mod4+h" = "focus left";
      "Mod4+j" = "focus down";
      "Mod4+k" = "focus up";
      "Mod4+l" = "focus right";

      "Mod4+Shift+h" = "move left";
      "Mod4+Shift+j" = "move down";
      "Mod4+Shift+k" = "move up";
      "Mod4+Shift+l" = "move right";

      "Mod4+b" = "splith";
      "Mod4+v" = "splitv";
      "Mod4+f" = "fullscreen toggle";
      "Mod4+a" = "focus parent";

      "Mod4+Shift+space" = "floating toggle";
      "Mod4+space" = "focus mode_toggle";

      "Control+1" = "workspace number 1";
      "Control+2" = "workspace number 2";
      "Control+3" = "workspace number 3";
      "Control+4" = "workspace number 4";
      "Control+5" = "workspace number 5";
      "Control+6" = "workspace number 6";
      "Control+7" = "workspace number 7";
      "Control+8" = "workspace number 8";
      "Control+9" = "workspace number 9";

      "Control+Shift+1" = "move container to workspace number 1";
      "Control+Shift+2" = "move container to workspace number 2";
      "Control+Shift+3" = "move container to workspace number 3";
      "Control+Shift+4" = "move container to workspace number 4";
      "Control+Shift+5" = "move container to workspace number 5";
      "Control+Shift+6" = "move container to workspace number 6";
      "Control+Shift+7" = "move container to workspace number 7";
      "Control+Shift+8" = "move container to workspace number 8";
      "Control+Shift+9" = "move container to workspace number 9";

      "Mod4+Shift+c" = "reload";
      "Mod4+Shift+e" =
        "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";

      "Mod4+r" = "mode resize";

      "Control+Return" = "exec ${term}";
      "Control+q" = "exec ${pkgs.qutebrowser}/bin/qutebrowser";
      "Mod4+s" = "exec ${pkgs.sway-contrib.grimshot}/bin/grimshot save screen ~/Pictures/screenshot_$(date +%Y%m%d%H%M%S).png";
      "Mod4+Shift+s" = "exec ${pkgs.sway-contrib.grimshot}/bin/grimshot save area ~/Pictures/screenshot_$(date +%Y%m%d%H%M%S).png";
      "Mod4+Control+l" = "exec \"${lock}\""; # Why doesnt this work?
    };
  };
  extraConfig = ''
    seat seat0 xcursor_theme capitaine-cursors 24
    exec swayidle -w \
      timeout 300 '${lock} ' \
      timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
      before-sleep '${lock}'
  '';
}
