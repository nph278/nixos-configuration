{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  # Kernel/initrd
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  # Decrypt
  boot.initrd.luks.devices."btrfs".device = "/dev/disk/by-label/btrfs-enc";
  boot.initrd.luks.devices."swap".device = "/dev/disk/by-label/swap-enc";

  # Mount partitions
  fileSystems."/" = {
    device = "/dev/mapper/btrfs";
    fsType = "btrfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/efi";
    fsType = "vfat";
  };

  swapDevices = [{ device = "/dev/mapper/swap"; }];

  # microcode
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  # high-resolution display
  hardware.video.hidpi.enable = lib.mkDefault true;
}
