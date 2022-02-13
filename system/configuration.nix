# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz";

  # Themes
 
  # One Dark
  colors = {
    black = "#282c34";
    red = "#e06c75";
    green = "#98c379";
    yellow = "#e5c07b";
    blue = "#61afef";
    magenta = "#c678dd";
    cyan = "#56b6c2";
    white = "#abb2bf";
  };

  # Nord
  # colors = {
  #   black = "#2e3440";
  #   red = "#bf616a";
  #   green = "#a3be8c";
  #   yellow = "#ebcb8b";
  #   blue = "#5e81ac";
  #   magenta = "#b48ead";
  #   cyan = "#8fbcbb";
  #   white = "#eceff4";
  # };
  
  font = "Fira Code Nerd Font";
  qbFont = "10pt ${font}";
  swayFont = {
    names = [font];
    size = 10.0;
  };

  mod = "Mod4";
  term = "alacritty";
  menu = "${pkgs.dmenu}/bin/dmenu_path | ${pkgs.dmenu}/bin/dmenu | ${pkgs.findutils}/bin/xargs swaymsg exec --";
  lock = "${pkgs.swaylock}/bin/swaylock -f -c #000000";
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      (import "${home-manager}/nixos")
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "hp"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
  time.timeZone = "America/New_York";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp10s0.useDHCP = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };


  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Flatpak
  services.flatpak.enable = true;
  xdg.portal.enable = true;

  # Pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.carl = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    killall
    vim
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [  ];
  networking.firewall.allowedUDPPorts = [  ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Opengl broken
  hardware.opengl.enable = true;
  
  # Home Manager
  home-manager.users.carl = {
    # Sway
    wayland.windowManager.sway = {
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
          "${mod}+d" = "exec ${menu}";
          "${mod}+q" = "exec qutebrowser";
          "${mod}+Control+l" = "exec \"${lock}\""; # Why doesnt this work?
        };
      };
      extraConfig = ''
        exec swayidle -w \
          timeout 300 '${lock} ' \
          timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
          before-sleep '${lock}'
      '';
    };

    # Alacritty
    programs.alacritty = {
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

    programs.git = {
      enable = true;
      userEmail = "carllegrone@protonmail.com";
      userName = "nph278";
    };

    programs.zsh = {
      enable = true;
      autocd = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      defaultKeymap = "viins";

      shellAliases = {
        # ls
        ls = "ls --color";
        l = "ls -la";

        # git
        ga = "git add -A";
        gc = "git commit -m";
        gp = "git push origin";
        gg = "git log --graph --pretty=oneline --abbrev-commit";
        gl = "git log --graph --pretty=short";
        gac = "git add -A && git commit -m";
        gf = "git fetch";
        
        # Programs
        kee = "fl org.keepassxc.KeePassXC";
        blender = "fl org.blender.Blender";
        steam = "fl com.valvesoftware.Steam";
        stk = "fl net.supertuxkart.SuperTuxKart";
        
        # Other
        db = "gdb -tui";
        rm = "trash";
        dev = "toolbox run -c dev zsh";
        ssh-setup = "killall ssh-agent; kee && eval \"$(ssh-agent -s)\" && wl-paste | ssh-add ~/.ssh/id_ed25519 && wl-copy ''";
        lock = "swaylock -f -c #000000";

        # Nix
        rebuild = "sudo cp ~/Projects/nixos-configuration/system/* /etc/nixos/ && sudo nixos-rebuild switch";
        rebuild-dev = "ln -sf ~/Projects/nixos-configuration/dev/* ~/Projects/; ln -sf ~/Projects/nixos-configuration/dev/.* ~/Projects/; direnv allow ~/Projects";
      };

      initExtra = ''
        pfetch
        eval "$(direnv hook zsh)"
      '';

      initExtraFirst = ''
        fl() {
          flatpak run $1 > /dev/null & disown
        }

        function zle-keymap-select {
          if [[ ''${KEYMAP} == vicmd ]] ||
             [[ $1 = 'block' ]]; then
            echo -ne '\e[1 q'
          elif [[ ''${KEYMAP} == main ]] ||
               [[ ''${KEYMAP} == viins ]] ||
               [[ ''${KEYMAP} = ''' ]] ||
               [[ $1 = 'beam' ]]; then
            echo -ne '\e[5 q'
          fi
        }
        
        zle -N zle-keymap-select
        echo -ne '\e[5 q'
      '';

      localVariables = {
        # AAAHHHHHHHHH
        PROMPT = "%F{white}%(?..%F{red}%?%F{white} )%F{yellow}%*%F{white} %F{green}%n@%m%F{white} %F{red}%~%F{white}$([[ -d ./.git ]] && printf \":\")%F{magenta}$([[ -d ./.git ]] && git branch --show-current)%F{white} ";
      };
    };

    programs.qutebrowser = {
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

        auto_save.session = true;
        downloads.location.directory = "~/Downloads";

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
      };
      
      quickmarks = {
        r = "reddit.com";
        yt = "youtube.com";
        gh = "github.com"; 
      };
    };

    home.packages = with pkgs; [
      # Admin
      neofetch
      pfetch
      htop
      trash-cli
      
      # Sway
      swaylock
      swayidle
      wl-clipboard

      # Dev
      direnv
    ];
  };
 
  # Fonts
  fonts.fonts = with pkgs; [
    nerdfonts
    noto-fonts
    noto-fonts-emoji
  ];

  security.apparmor = {
    enable = true;
  };

  security.pam.services.swaylock = {};

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

}

