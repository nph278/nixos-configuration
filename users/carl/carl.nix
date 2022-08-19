{ pkgs, unstablePkgs }:

let
  rustPkgs = unstablePkgs.rust.packages.stable;
in
{
  programs.zsh = (import ./z_shell.nix) { inherit pkgs; inherit rustPkgs; };
  programs.neovim = (import ./nvim.nix) { inherit unstablePkgs; };
  programs.alacritty = import ./alacritty.nix;
  programs.qutebrowser = import ./qutebrowser.nix;
  wayland.windowManager.sway = (import ./sway.nix) { inherit pkgs; };

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
    ranger # Replace with lf? How does it even work? C for now I guess?

    # Sway
    swaylock
    swayidle
    wl-clipboard
    grim
    sway-contrib.grimshot

    # Multimedia
    imv
    mpv

    # Cursor theme
    capitaine-cursors

    # Dev
    gh
    fzf
    ripgrep
    xdg-utils

    # Lua
    unstablePkgs.sumneko-lua-language-server
    unstablePkgs.luaformatter

    # Nix
    unstablePkgs.rnix-lsp

    # Rust
    rustPkgs.rustc
    rustPkgs.cargo
    rustPkgs.clippy
    rustPkgs.rustfmt
    unstablePkgs.rust-analyzer

    # Rust dyndeps
    # unstablePkgs.openssl
    # unstablePkgs.pkg-config

    # Games
    (rustPkgs.rustPlatform.buildRustPackage rec {
      pname = "snake-crossterm";
      version = "1.1.0";

      src = fetchFromGitHub {
        owner = "nph278";
        repo = pname;
        rev = "226546ea372c075555c7a44649a84bc64627361c";
        sha256 = "74fe9ae67cf9e397fc08eed6547739abbc917639b11535b6f780baa80f968ab5";
      };

      cargoSha256 = "0nr7pv66dchhy1vsfhx41p56svwfms7qxhbxb3s7pgrfihdjshas";
      verifyCargoDeps = true;
    })
  ];
}

