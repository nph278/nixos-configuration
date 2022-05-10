{ pkgs }:

{
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

    # KeePassXC
    kee = "keepassxc-cli open ~/.config/KeePass.kdbx";

    # Programs
    blender = "fl org.blender.Blender";
    steam = "fl com.valvesoftware.Steam";
    stk = "fl net.supertuxkart.SuperTuxKart";
    gimp = "fl org.gimp.GIMP";

    # Nix
    rebuild = "doas nixos-rebuild switch";

    # Other
    db = "gdb -tui";
    rm = "trash";
    dev = "toolbox run -c dev zsh";
    ssh-setup = "killall ssh-agent; kee && eval \"$(ssh-agent -s)\" && wl-paste | ssh-add ~/.ssh/id_ed25519 && wl-copy ''";
    lock = "swaylock -f -c #000000";
    p = "cd ~/Projects; cd $(/usr/bin/env ls ~/Projects | grep -v \\\\. | fzf)";
    down = "(cd ~/Projects && doas nix-collect-garbage -d && rebuild --upgrade && shutdown now) || lock";
  };

  initExtraFirst = ''
    fl() {
      flatpak run $1 &> /dev/null & disown
    }

    zle -N zle-keymap-select
    echo -ne '\e[5 q'

    function prompt-command {
      printf "$(pwd) $"
    }
  '';

  initExtra = ''
    precmd() {zle-keymap-select}
    pfetch
    eval "$(direnv hook zsh)"

    function zle-keymap-select {
      if [[ ''${KEYMAP} == vicmd ]] ||
         [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
      elif [[ ''${KEYMAP} == main ]] ||
           [[ ''${KEYMAP} == viins ]] ||
           [[ ''${KEYMAP} = ''' ]] ||
           [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
      fi
    }
  '';

  localVariables = {
    PROMPT = "%~ $ ";
  };
}
