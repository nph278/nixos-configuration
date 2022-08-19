# TODO:
#
# Fix telescope
#

# configuration.nix(5) man page

{ config, pkgs, ... }:

let
  unstablePkgs = import (fetchTarball ("https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz")) { };
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz";
  theme = import ./theme.nix;
in
{
  imports = [
    ./hardware-configuration.nix
    (import "${home-manager}/nixos")
  ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = true;
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
  xdg.portal.wlr.enable = true;

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

  # Global packages
  environment.systemPackages = with pkgs; [
    killall
    vim
    unzip
  ];

  # SUID wrapper support?
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Firewall
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];

  # Opengl broken
  hardware.opengl.enable = true;

  # Home Manager
  home-manager.users.carl = import ../users/carl/carl.nix { inherit pkgs; inherit unstablePkgs; };

  # Fonts
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "VictorMono" ]; })
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
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
      sway
    fi
  '';

  # Version, I guess don't update!??
  system.stateVersion = "21.11";
}
