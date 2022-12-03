# configuration.nix(5) man page

{ config, pkgs, unstablePkgs, lib, modulesPath, inputs, ... }:

{
  imports = [
    (import "${inputs.home-manager}/nixos")
    ../nixos/rpi-pico
  ];

  # Kernel/initrd
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  # LUKS
  boot.initrd.luks.devices."btrfs".device = "/dev/disk/by-uuid/4629fa43-42ee-4565-b0a1-5c728b8558b2";
  boot.initrd.luks.devices."swap".device = "/dev/disk/by-uuid/5301d3fd-3816-4f1c-81be-fc5918d6a743";

  # Mount points
  fileSystems = {
    "/" = {
      device = "/dev/mapper/btrfs";
      fsType = "btrfs";
      options = [ "subvol=@root" "compress=zstd" ];
    };

    "/nix" = {
      device = "/dev/mapper/btrfs";
      fsType = "btrfs";
      options = [ "subvol=@nix" "compress=zstd" "noatime" ];
    };

    "/home" = {
      device = "/dev/mapper/btrfs";
      fsType = "btrfs";
      options = [ "subvol=@home" "compress=zstd" ];
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/A1FD-E34F";
      fsType = "vfat";
    };
  };

  # Swap
  swapDevices = [{ device = "/dev/mapper/swap"; }];

  # Microcode
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.amd.updateMicrocode = true;

  # high-resolution display
  hardware.video.hidpi.enable = true;

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
  services.printing.enable = false;

  # Flatpak
  services.flatpak.enable = true;

  # Users
  users.users.carl = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialHashedPassword = "$6$.IqSS2l7qyItCIua$kOSNB5m6KOqBOJpL1ZkKymGfoAPZ5LEn9xj9R5xRxKjR9ZHCdxTQYfTBVqtA9o/d8YSC/HNP4vRlIsn3aHb6b1";
  };

  # Root password
  users.users.root.initialHashedPassword = "$6$.IqSS2l7qyItCIua$kOSNB5m6KOqBOJpL1ZkKymGfoAPZ5LEn9xj9R5xRxKjR9ZHCdxTQYfTBVqtA9o/d8YSC/HNP4vRlIsn3aHb6b1";

  # Firewall
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];

  # Home Manager
  home-manager.users.carl = {
    imports = [ ../users/carl/home.nix ];
    config._module.args = {
      inherit unstablePkgs inputs;
      pkgs = lib.mkForce pkgs;
      system = pkgs.system;
    };
  };

  # Apparmor
  security.apparmor = {
    enable = true;
    packages = with pkgs; [
      apparmor-profiles
    ];
  };

  # fwupd
  services.fwupd.enable = true;

  # Remove sudo
  security.sudo.enable = false;
}
