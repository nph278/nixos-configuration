{ unstablePkgs, ... }:

{
  home.packages = with unstablePkgs; [
    (somebar.override {
      conf = ./somebar_config.hpp;
    })
    (dwl.override {
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
