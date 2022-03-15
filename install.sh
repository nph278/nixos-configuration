#!/usr/bin/env bash

# Need root access
if [[ $USER != "root" ]]; then
  echo "Run with sudo."
  exit 1
fi

# Get disk device
lsblk
printf "Enter disk device: /dev/"
read disk
# Get swap amount
grep MemTotal /proc/meminfo
printf "Swap amount (In GiB): "
read swap

nix-shell -p parted --run "./partition.sh $disk $swap"
