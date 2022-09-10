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
