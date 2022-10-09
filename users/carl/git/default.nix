{ ... }:

{
  programs.git = {
    enable = true;
    userEmail = "carllegrone@protonmail.com";
    userName = "nph278";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
