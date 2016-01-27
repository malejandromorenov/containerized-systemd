#!/bin/sh

[ -z "$NSPAWN_DIR" ] && NSPAWN_DIR=./nspawn-systemd
[ -d "$NSPAWN_DIR" ] && echo already exists && echo 'try: btrfs subvolume delete ./deboostrap' && exit 1

btrfs subvolume create "$NSPAWN_DIR"
debootstrap jessie "$NSPAWN_DIR" ${1-http://httpredir.debian.org/debian}
chroot "$NSPAWN_DIR" apt-get install -y openssh-server
echo -n "CHANGE\nCHANGE\n" | chroot "$NSPAWN_DIR" passwd
