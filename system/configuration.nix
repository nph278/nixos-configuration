# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz";
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
  font = "JetBrains Mono";
  swayFont = {
    names = [font];
    size = 10.0;
  };
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

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

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
        modifier = "Mod4";
        terminal = "alacritty";
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
      };
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
      };

      initExtra = ''
        pfetch
      '';

      initExtraFirst = ''
        fl() {
          flatpak run $1 > /dev/null & disown
        }

        rebuild() {
          sudo cp ~/Projects/nixos-configuration/system/* /etc/nixos/ && sudo nixos-rebuild switch
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
    ];
  };
 
  # Fonts
  fonts.fonts = with pkgs; [
    jetbrains-mono
  ];

  security.apparmor = {
    enable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

}

