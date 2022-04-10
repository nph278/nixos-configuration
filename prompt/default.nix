with import <nixpkgs> { };

let
  pkgs = import (fetchTarball ("https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz")) { };
in
rustPlatform.buildRustPackage rec {
  name = "carls-prompt";
  src = ./.;
  sha256 = "670e9904e257d445a9f1690cea01408a";
  cargoLock = {
    lockFile = ./Cargo.lock;
  };
}
