# TODO:
#
# Updating with `nix flake update`
# Filetypes
# Fix telescope
# Sway keybinds
# Better swaylock config format
# Correct lua importing
#

# configuration.nix(5) man page

{ config, pkgs, unstablePkgs, home-manager, lib, modulesPath, ... }:

let
  theme = import ./theme.nix;
in
{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    (import "${home-manager}/nixos")
  ];

  # Nix settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.allowedUsers = [ "@wheel" ];

  # Kernel/initrd
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  # Decryption
  boot.initrd.luks.devices."btrfs".device = "/dev/disk/by-uuid/4629fa43-42ee-4565-b0a1-5c728b8558b2";
  boot.initrd.luks.devices."swap".device = "/dev/disk/by-uuid/5301d3fd-3816-4f1c-81be-fc5918d6a743";

  # Mount points
  fileSystems."/" = {
    device = "/dev/mapper/btrfs";
    fsType = "btrfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/A1FD-E34F";
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

  # DNS
  environment.etc."resolv.conf".source = pkgs.writeTextFile {
    name = "resolv.conf";
    text = ''
      domain home
      nameserver 1.1.1.1
      nameserver 192.168.1.1
      nameserver 2001:1998:f00:2::1
      nameserver 2001:1998:f00:1::1
      options edns0
    '';
  };

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

  # No mutation of users (no passwd usage)
  users.mutableUsers = false;

  # Users
  users.users.carl = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialHashedPassword = "$6$.IqSS2l7qyItCIua$kOSNB5m6KOqBOJpL1ZkKymGfoAPZ5LEn9xj9R5xRxKjR9ZHCdxTQYfTBVqtA9o/d8YSC/HNP4vRlIsn3aHb6b1";
  };

  # Root password
  users.users.root.initialHashedPassword = "$6$.IqSS2l7qyItCIua$kOSNB5m6KOqBOJpL1ZkKymGfoAPZ5LEn9xj9R5xRxKjR9ZHCdxTQYfTBVqtA9o/d8YSC/HNP4vRlIsn3aHb6b1";

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
  home-manager.useGlobalPkgs = true;

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

  # Remove sudo
  security.sudo.enable = false;

  # Fix swaylock
  security.pam.services.swaylock = { };

  # Automatically start ssh + sway
  programs.bash.shellInit = ''
    if [[ $TERM == linux ]]; then
      eval "$(ssh-agent -s)"
      sway
    fi
  '';

  # Version, I guess don't update!??
  system.stateVersion = "21.11";
}
