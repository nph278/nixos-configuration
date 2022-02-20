# TODO:
# Not horrible lua lsp
# split up init.lua
# userscripts
# kernel stuff
# script/partitions

# configuration.nix(5) man page

{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz";
  theme = (import ./theme.nix);
in
{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      (import "${home-manager}/nixos")
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Network
  networking.hostName = "hp";
  # networking.wireless.enable = true;
  networking.useDHCP = false;
  networking.interfaces.enp10s0.useDHCP = true;

  # Locale
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Printing
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

  # Users
  users.users.carl = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  # Global packages.
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
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Opengl broken
  hardware.opengl.enable = true;

  # Home Manager
  home-manager.users.carl = {
    # Sway
    programs.zsh = (import ./z_shell.nix) { inherit pkgs; };
    programs.alacritty = (import ./alacritty.nix) { inherit theme; };
    programs.qutebrowser = (import ./qutebrowser.nix) { inherit theme; };
    wayland.windowManager.sway = (import ./sway.nix) { inherit pkgs; inherit theme; };

    programs.git = {
      enable = true;
      userEmail = "carllegrone@protonmail.com";
      userName = "nph278";
    };

    home.packages = with pkgs; [
      # Admin
      neofetch
      pfetch
      htop
      trash-cli
      pulsemixer
      keepassxc
      tree

      # Sway
      swaylock
      swayidle
      wl-clipboard

      # Dev
      direnv
      gh
      fzf

      # Multimedia
      feh
      mpv
    ];
  };

  # Fonts
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "VictorMono" ]; })
    noto-fonts
    noto-fonts-emoji
  ];

  # Apparmor
  security.apparmor = {
    enable = true;
  };

  # Doas
  security.sudo.enable = false;
  security.doas = {
    enable = true;
    extraRules = [
      {
        groups = [ "wheel" ];
        noPass = false;
        keepEnv = true;
        persist = true;
      }
    ];
  };

  # Fix swaylock
  security.pam.services.swaylock = { };

  # Automatically start ssh
  programs.bash.shellInit = ''
    if [[ $TERM == linux ]]; then
      eval "$(ssh-agent -s)"
    fi
  '';

  system.stateVersion = "21.11";
}

