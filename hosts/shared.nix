{ pkgs, ... }:

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
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Bitmap fonts
  fonts.fontconfig.allowBitmaps = true;

  # Fix issues
  hardware.opengl.enable = true;
  xdg.portal.wlr.enable = true;

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
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.allowedUsers = [ "@wheel" ];
}
