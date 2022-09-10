while true; do
  WINDOW="$(swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.focused==true).name')"
  DATE="$(date +'%A %D %r')"

  echo "$WINDOW | $DATE "
  sleep 0.1;
done
