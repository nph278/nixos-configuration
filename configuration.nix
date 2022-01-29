# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz";
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
        # font = "JetBrains Mono Normal 11";
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
          # font = "JetBrains Mono 10";
          # status_command = "while date ='%h %d -> %H %M %S'";
          # status_edge_padding = 30;
          colors = {
            statusline = "#abb2bf";
            background = "#282c34";
            # focused_workspace = "#282c34 #61afef #282c34";
            # active_workspace = "#282c34 #e06c75 #282c34";
            # inactive_workspace = "#282c34 #282c34 #abb2bf";
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
            family = "JetBrains Mono";
            style = "Regular";
          };
          bold = {
            family = "JetBrains Mono";
            style = "Bold";
          };
          italic = {
            family = "JetBrains Mono";
            style = "Italic";
          };
          bold_italic = {
            family = "JetBrains Mono";
            style = "Bold Italic";
          };

          size = 11;
        };
      };
    };

    programs.git = {
      enable = true;
    };

    home.packages = with pkgs; [
      # Admin
      neofetch
      htop
      
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

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

}

