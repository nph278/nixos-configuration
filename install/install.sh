#!/usr/bin/env sudo su

lsblk
echo -n "Enter disk to install to (e.g. /dev/sda, /dev/nvme0n1): "
read PART
echo -n "Enter the amount of swap memory to use (e.g. 100M, 10G): "
read SWAP_SIZE

# Partition
sudo fdisk $PART << FDISK_CMDS
g
n
1

+512M
n
2

+$SWAP_SIZE
n
3


t
1
1
t
2
29
t
3
29
x
n
1
efi
n
2
swap-enc
n
3
btrfs-enc
r
w
FDISK_CMDS

# Format EFI
mkfs.fat -F 32 /dev/disk/by-partlabel/efi
fatlabel /dev/disk/by-partlabel/efi efi

# Format swap
cryptsetup luksFormat /dev/disk/by-partlabel/swap-enc
cryptsetup luksOpen /dev/disk/by-partlabel/swap-enc swap
cryptsetup config /dev/disk/by-partlabel/swap-enc --label swap-enc
mkswap /dev/mapper/swap
swapon /dev/mapper/swap

# Format swap
cryptsetup luksFormat /dev/disk/by-partlabel/btrfs-enc
cryptsetup luksOpen /dev/disk/by-partlabel/btrfs-enc btrfs
cryptsetup config /dev/disk/by-partlabel/btrfs-enc --label btrfs-enc
mkfs.btrfs -f /dev/mapper/btrfs

# Mount filesystems
mount /dev/mapper/btrfs /mnt
mkdir /mnt/boot
mount /dev/disk/by-label/efi /mnt/boot

# Copy configuration
mkdir -p /mnt/etc/nixos
mkdir -p /mnt/home/carl/Projects
cp -r "$(dirname $0)/.." /mnt/home/carl/Projects/nixos-configuration
cd /mnt/etc/nixos
ln -sf ../../home/carl/Projects/nixos-configuration/system ./system
echo "{...}:\n\n{\n  imports = [\n    ./system/configuration.nix\n  ];\n}" > /mnt/etc/nixos/configuration.nix

# Setup dev
cd /mnt/home/carl/Projects/
ln -sf ./nixos-configuration/dev/shell.nix ./shell.nix
ln -sf ./nixos-configuration/dev/.envrc ./.envrc
mkdir -p /mnt/home/carl/.config
cd /mnt/home/.config
ln -sf ../Projects/nixos-configuration/dev/nvim ./nvim
