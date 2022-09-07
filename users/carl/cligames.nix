{ pkgs, fenix, system, ... }:

let
  rustPlatform = pkgs.makeRustPlatform {
    inherit (fenix.packages.${system}.stable) cargo rustc;
  };
in
{
  home.packages = [
    (rustPlatform.buildRustPackage
      {
        pname = "snake-crossterm";
        version = "1.1.0";

        src = pkgs.fetchFromGitHub {
          owner = "nph278";
          repo = "snake-crossterm";
          rev = "226546ea372c075555c7a44649a84bc64627361c";
          sha256 = "74fe9ae67cf9e397fc08eed6547739abbc917639b11535b6f780baa80f968ab5";
        };

        cargoSha256 = "0nr7pv66dchhy1vsfhx41p56svwfms7qxhbxb3s7pgrfihdjshas";
        verifyCargoDeps = true;
      })
    (rustPlatform.buildRustPackage
      {
        pname = "r2048";
        version = "1.0.0";

        src = pkgs.fetchFromGitHub {
          owner = "nph278";
          repo = "r2048";
          rev = "b4738bc4a284b51fc0d35315ba5b7f7afd0560ef";
          sha256 = "9b4b1ac8a4195baaf0183b82a889d67809c36bf775051a18caf89efaabc71e2a";
        };

        cargoSha256 = "sha256-ANY54FlG18Tr+H1/ResV9J4b8myBBcRA6vk3Ll2DSZM=";
        verifyCargoDeps = true;
      })
  ];
}
