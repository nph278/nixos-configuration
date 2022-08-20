{ rustPkgs, pkgs }:

rustPkgs.rustPlatform.buildRustPackage rec {
  pname = "snake-crossterm";
  version = "1.1.0";

  src = pkgs.fetchFromGitHub {
    owner = "nph278";
    repo = pname;
    rev = "226546ea372c075555c7a44649a84bc64627361c";
    sha256 = "74fe9ae67cf9e397fc08eed6547739abbc917639b11535b6f780baa80f968ab5";
  };

  cargoSha256 = "0nr7pv66dchhy1vsfhx41p56svwfms7qxhbxb3s7pgrfihdjshas";
  verifyCargoDeps = true;
}
