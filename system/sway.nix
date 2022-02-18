{ pkgs, theme }:

let
  colors = theme.colors;
  swayFont = {
    names = [ theme.font ];
  };

  mod = "Mod4";
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
      statusCommand = "while date +'%h %d -> %H %M %S     '; do sleep 1; done";
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
      "${mod}+Shift+q" = "kill";

      "${mod}+h" = "focus left";
      "${mod}+j" = "focus down";
      "${mod}+k" = "focus up";
      "${mod}+l" = "focus right";

      "${mod}+Shift+h" = "move left";
      "${mod}+Shift+j" = "move down";
      "${mod}+Shift+k" = "move up";
      "${mod}+Shift+l" = "move right";

      "${mod}+b" = "splith";
      "${mod}+v" = "splitv";
      "${mod}+f" = "fullscreen toggle";
      "${mod}+a" = "focus parent";

      "${mod}+s" = "layout stacking";
      "${mod}+w" = "layout tabbed";
      "${mod}+e" = "layout toggle split";

      "${mod}+Shift+space" = "floating toggle";
      "${mod}+space" = "focus mode_toggle";

      "${mod}+1" = "workspace number 1";
      "${mod}+2" = "workspace number 2";
      "${mod}+3" = "workspace number 3";
      "${mod}+4" = "workspace number 4";
      "${mod}+5" = "workspace number 5";
      "${mod}+6" = "workspace number 6";
      "${mod}+7" = "workspace number 7";
      "${mod}+8" = "workspace number 8";
      "${mod}+9" = "workspace number 9";

      "${mod}+Shift+1" = "move container to workspace number 1";
      "${mod}+Shift+2" = "move container to workspace number 2";
      "${mod}+Shift+3" = "move container to workspace number 3";
      "${mod}+Shift+4" = "move container to workspace number 4";
      "${mod}+Shift+5" = "move container to workspace number 5";
      "${mod}+Shift+6" = "move container to workspace number 6";
      "${mod}+Shift+7" = "move container to workspace number 7";
      "${mod}+Shift+8" = "move container to workspace number 8";
      "${mod}+Shift+9" = "move container to workspace number 9";

      "${mod}+Shift+minus" = "move scratchpad";
      "${mod}+minus" = "scratchpad show";

      "${mod}+Shift+c" = "reload";
      "${mod}+Shift+e" =
        "exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'";

      "${mod}+r" = "mode resize";

      "${mod}+Return" = "exec ${term}";
      "${mod}+q" = "exec ${pkgs.qutebrowser}/bin/qutebrowser";
      "${mod}+Control+l" = "exec \"${lock}\""; # Why doesnt this work?
    };
  };
  extraConfig = ''
    exec swayidle -w \
      timeout 300 '${lock} ' \
      timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
      before-sleep '${lock}'
  '';
}
