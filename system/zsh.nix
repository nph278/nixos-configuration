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
    
    # Other
    db = "gdb -tui";
    rm = "trash";
    dev = "toolbox run -c dev zsh";
    ssh-setup = "killall ssh-agent; kee && eval \"$(ssh-agent -s)\" && wl-paste | ssh-add ~/.ssh/id_ed25519 && wl-copy ''";
    lock = "swaylock -f -c #000000";

    # Nix
    rebuild = "doas cp ~/Projects/nixos-configuration/system/* /etc/nixos/ && doas nixos-rebuild switch";
    rebuild-dev = "ln -sf ~/Projects/nixos-configuration/dev/* ~/Projects/; ln -sf ~/Projects/nixos-configuration/dev/.* ~/Projects/; direnv allow ~/Projects";
  };

  initExtra = ''
    pfetch
    eval "$(direnv hook zsh)"
  '';

  initExtraFirst = ''
    fl() {
      flatpak run $1 > /dev/null & disown
    }

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
    
    zle -N zle-keymap-select
    echo -ne '\e[5 q'
  '';

  localVariables = {
    # AAAHHHHHHHHH
    PROMPT = "%F{white}%(?..%F{red}%?%F{white} )%F{yellow}%*%F{white} %F{green}%n@%m%F{white} %F{red}%~%F{white}$([[ -d ./.git ]] && printf \":\")%F{magenta}$([[ -d ./.git ]] && git branch --show-current)%F{white} ";
  };
}
