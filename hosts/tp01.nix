# configuration.nix(5) man page

{ config, pkgs, unstablePkgs, lib, modulesPath, inputs, ... }:

{
  imports = [
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
    packages = with pkgs; [
      # Multimedia
      (pkgs.mpv.override {
        scripts = with pkgs.mpvScripts; [ thumbnail mpris ];
      })
      imv
      ffmpeg

      # Terminal
      alacritty

      # Cursor theme
      capitaine-cursors

      # Dev
      gh
      zsh
      fzf
      git
      ripgrep
      cmake
      python3
      fasm
      nasm
      miniserve
      racket
      picotool
      gcc-arm-embedded
      # gnuapl
      # scryer-prolog

      # Lua
      unstablePkgs.sumneko-lua-language-server
      unstablePkgs.luaformatter

      # Nix
      unstablePkgs.rnix-lsp
      unstablePkgs.statix
      vulnix
      direnv
      nix-direnv

      # Info
      neofetch
      pfetch
      htop
      # btop

      # Audio
      pulsemixer
      playerctl

      # Games
      prismlauncher

      # Web
      pandoc
      w3m
      qutebrowser
      # tuir
      # tmpmail
      # firefox

      # Sway
      sway
      swaylock
      swayidle
      wl-clipboard
      grim
      sway-contrib.grimshot

      # Virt
      qemu

      # Other
      trash-cli
      keepassxc
      xdg-utils
      tree
      jq
      yt-dlp
      logisim-evolution
      # cowsay
      # fortune
      # figlet
    ]
    // (import ../nixos/cligames.nix)
    // (import ../nixos/rust.nix);
  };

  # Root password
  users.users.root.initialHashedPassword = "$6$.IqSS2l7qyItCIua$kOSNB5m6KOqBOJpL1ZkKymGfoAPZ5LEn9xj9R5xRxKjR9ZHCdxTQYfTBVqtA9o/d8YSC/HNP4vRlIsn3aHb6b1";

  # Fonts
  fonts.fonts = with pkgs; [
    scientifica
    (nerdfonts.override {
      fonts = [ "VictorMono" ];
    })
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
  ];

  # Firewall
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];

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
