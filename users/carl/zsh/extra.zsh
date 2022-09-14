setopt PROMPT_SUBST

PROMPT='%F{red}%~%F{magenta}:$(git branch --show-current 2> /dev/null || echo none)%F{white} λ '

set_title() {
  echo -n "\e]0;$1\a"
}

precmd() {
  set_title "$USER@$HOST [zsh]"
  zle-keymap-select
}

preexec() {
  set_title "$USER@$HOST [$1]"
}

fl() {
  flatpak run $1 &> /dev/null & disown
}

# Opens the $1th hn post in the browser
hnn() {
  xdg-open "$(hn $[$1+1] | tail -1 | cut -c 5- | sed -r 's/\x1B\[[0-9;]*[JKmsu]//g')"
}

# Open markup file
md() {
  pandoc "$1" | w3m -T text/html
}

pfetch

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select
echo -ne '\e[5 q'
