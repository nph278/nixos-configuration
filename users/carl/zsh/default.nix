{ pkgs, system, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    defaultKeymap = "viins";

    shellAliases = {
      # ls
      ls = "ls --color";
      l = "ls -la";

      # git
      ga = "git add -A";
      gc = "git commit -m";
      gp = "git push origin";
      gg = "git log --graph --pretty=oneline --abbrev-commit";
      gl = "git log --graph --pretty=short";
      gac = "git add -A && git commit -m";
      gf = "git fetch";
      gs = "git status";
      gd = "git diff";

      # KeePassXC
      kee = "keepassxc-cli open ~/.config/KeePass.kdbx";

      # Programs
      blender = "fl org.blender.Blender";
      steam = "fl com.valvesoftware.Steam";
      stk = "fl net.supertuxkart.SuperTuxKart";
      gimp = "fl org.gimp.GIMP";
      snake = "snake-crossterm";
      "2048" = "r2048";
      strat = "oblique-strategies | cowsay";
      mpva = "mpv --no-video";

      # Nix
      rebuild = "su -c 'nixos-rebuild switch --flake path:///home/carl/Projects/nixos-configuration'";
      vulns = "vulnix --system | grep CVE- | cut -c 34-51";
      withpkgs = "nix-shell --command zsh -p";

      # Other
      db = "gdb -tui";
      rm = "trash";
      dev = "toolbox run -c dev zsh";
      ssh-setup = "killall ssh-agent; kee && eval \"$(ssh-agent -s)\" && wl-paste | ssh-add ~/.ssh/id_ed25519 && wl-copy ''";
      lock = "${pkgs.swaylock}/bin/swaylock -f";
      p = "cd ~/Projects/$(/usr/bin/env ls ~/Projects | grep -v '\\\.[^i]' | fzf)";
      # down = "(rebuild --upgrade && shutdown now) || lock";
      garbage = "su -c 'nix-collect-garbage -d'";
      redo = "$(cat ~/.zsh_history | fzf)";
      cleannvim = "rm -rf ~/.local/share/nvim";
      sudo = "su root -c";
    };

    initExtra = builtins.readFile ./extra.zsh;
  };
}

