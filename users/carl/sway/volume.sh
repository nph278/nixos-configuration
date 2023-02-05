#!/usr/bin/env zsh

if [[ $1 == "down" ]]; then
  playerctl volume "$[$(playerctl volume) - 0.1]"
fi
if [[ $1 == "up" ]]; then
  playerctl volume "$[$(playerctl volume) + 0.1]"
fi
