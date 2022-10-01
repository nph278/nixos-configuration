{ pkgs, unstablePkgs, ... }:

{
  home.packages = with unstablePkgs; [
    (somebar.override {
      conf = ./somebar_config.hpp;
    })
    ((dwl.overrideAttrs (old: {
      src = pkgs.fetchFromGitHub {
        owner = "djpohly";
        repo = "dwl";
        rev = "b5776e5180010ead5232efb36b2490f4fc9e1366";
        sha256 = "sha256-63lYKqFy1p8MAb1SZfz8tahMJ+X5LnY5w7xjnM/X6LE=";
      };
    })).override {
      # wlroots = unstablePkgs.wlroots;
      conf = ./dwl_config.h;
    })
    swaybg
  ];

  home.file.".config/dwl/startup.sh" = {
    executable = true;
    text = ''
      eval "$(ssh-agent -s)"
      dwl -s "swaybg -i ${../assets/bg.png} -m fill & somebar"
    '';
  };
}
