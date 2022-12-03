function once() {
  WINDOW="$(swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.focused==true).name')"
  DATE="$(date +'%A %D %r')"
  MEDIA="$(playerctl metadata title 2>/dev/null || echo 'Not playing')"
  PLAYER_STATUS=$(playerctl status)

  if [ $PLAYER_STATUS = "Playing" ]
  then
    SONG_STATUS='▶'
  elif [ $PLAYER_STATUS = "Paused" ]
  then
    SONG_STATUS='⏸'
  else
    SONG_STATUS='⏹'
  fi

  echo "$WINDOW | $SONG_STATUS $MEDIA | $DATE hi"
}

function sec() {
  while true; do
    sleep 1;
    once;
  done
}

function event() {
  while true; do
    swaymsg -t subscribe '["window","workspace","input"]' > /dev/null;
    once;
  done
}

sec & event
