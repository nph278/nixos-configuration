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
          rev = "710d6dcb1c13df9e5f2c6bb87c27cea1b4901c2b";
          sha256 = "738aa47796b30610d5bc492b4bf4dc8f90fc5f291df7230c78e57aee79c00804";
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
    (rustPlatform.buildRustPackage
      {
        pname = "oblique-strategies-cli";
        version = "0.1.0";

        src = pkgs.fetchFromGitHub {
          owner = "nph278";
          repo = "oblique-strategies-cli";
          rev = "6e7e07b2c2267b137612d062819c40e3e44e2839";
          sha256 = "84b6ce5e280510c9a22deed8e393a51555ac67d0d2738fae5574b527c8e6c5b6";
        };

        cargoSha256 = "sha256-csxJF17Q/YL7kgPxExa8+FNiF4hVISJ5+6vtGyS3CdU=";
        verifyCargoDeps = true;
      })
  ];
}
