# TODO:
#
# Shared host data
# Fix telescope
# Sway keybinds
# Better swaylock config format
# Correct lua importing
#

# configuration.nix(5) man page

{ config, nixpkgs, home-manager, nixpkgs-unstable, lib, modulesPath, ... }:

let
  pkgs = nixpkgs;
  unstablePkgs = nixpkgs-unstable;
  theme = import ./theme.nix;
in
{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    (import "${home-manager}/nixos")
  ];

  # Nix features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Kernel/initrd
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  # Decryption
  boot.initrd.luks.devices."btrfs".device = "/dev/disk/by-label/btrfs-enc";
  boot.initrd.luks.devices."swap".device = "/dev/disk/by-label/swap-enc";

  # Mount points
  fileSystems."/" = {
    device = "/dev/mapper/btrfs";
    fsType = "btrfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/efi";
    fsType = "vfat";
  };

  # Swap
  swapDevices = [{ device = "/dev/mapper/swap"; }];

  # Microcode
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  # high-resolution display
  hardware.video.hidpi.enable = lib.mkDefault true;

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Network
  networking.hostName = "tp01";
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
  home-manager.users.carl = import ../users/carl/home.nix { inherit pkgs; inherit unstablePkgs; };

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
