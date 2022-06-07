# nixos-configuration
My NixOS configuration

## File structure

`system` contains NixOS/home-manager configuration. It is linked to `/etc/nixos/system`. `/etc/nixos/configuration.nix` just imports it.

`dev` contains a dev environment with neovim. `dev/shell.nix` and `dev/.envrc` are linked to `~/Projects/shell.nix` and `~/Projects/.envrc`.

`install` contains the installer.

## Disk structure

The partitions are organized by label.

`/dev/disk/by-label/efi` is the EFI partition.

`/dev/disk/by-label/btrfs-enc` is the encrypted btrfs filesystem. This decrypts to `/dev/mapper/btrfs`.

`/dev/disk/by-label/swap-enc` is the encrypted swap memory. This decrypts to `/dev/mapper/swap`.

You can label the efi partition with `fatlabel`, and the other partitions with `cryptsetup config`.

## Install

This does not work yet.

On a NixOS install live usb, clone the repo and run `./install/install.sh`

## test.css

Custom stylesheet, currently working on it.

