#!/bin/sh

[ -z "$NSPAWN_DIR" ] && export NSPAWN_DIR="nspawn-systemd"
[ -d "$NSPAWN_DIR" ] || ./debootstrap.sh

systemd-nspawn --capability=CAP_SYS_ADMIN --directory "$NSPAWN_DIR" --boot "$1" /lib/systemd 
