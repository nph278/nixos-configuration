{ pkgs, ... }:

{
  home.packages = [
    pkgs.btop
  ];

  home.file.".config/btop/btop.conf".text = ''
    color_theme = "TTY"
    theme_background = False
    vim_keys = true
    rounded_corners = false
    temp_scale = "fahrenheit" # murica
    disks_filter = ""
    log_level = "WARNING"
  '';
}
