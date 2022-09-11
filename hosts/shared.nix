{ pkgs, inputs, ... }:

{
  # Global packages
  environment.systemPackages = with pkgs; [
    killall
    vim
    unzip
    gcc
    cmake
    gnumake
    binutils
    strace
    ltrace
    pkg-config
    openssl
  ];

  # Environment variables
  environment.variables = {
    EDITOR = "vim";
    VISUAl = "vim";
    OPENSSL_DIR = "${pkgs.openssl.dev}";
    OPENSSL_LIB_DIR = "${pkgs.openssl.out}/lib";
  };

  # SUID wrapper support?
  programs.mtr.enable = true;

  # Bitmap fonts
  fonts.fontconfig.allowBitmaps = true;

  # Fix issues
  hardware.opengl.enable = true;
  xdg.portal.wlr.enable = true;
  security.pam.services.swaylock = { };
  security.rtkit.enable = true;

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = true;
  boot.loader.efi.canTouchEfiVariables = true;

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

  # Nix settings
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    substituters = [
      "https://nix-community.cachix.org"
      "https://cache.nixos.org/"
    ];
    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
    keep-outputs = true;
    keep-derivations = true;
  };
  nix.allowedUsers = [ "@wheel" ];

  # GC / optimise
  nix.gc.automatic = true;
  nix.gc.dates = "daily";

  nix.optimise.automatic = true;
  nix.optimise.dates = [ "daily" ];

  # Nix-path
  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];

  # SSH
  programs.ssh.startAgent = true;

  # Pipewire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # No mutation of users (no passwd usage)
  users.mutableUsers = false;

  # Don't update, compatibility version
  system.stateVersion = "21.11";
}
