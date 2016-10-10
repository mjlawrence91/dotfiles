#!/usr/bin/env bash

set -e

ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

BACKUP_DIR=~/.backup
KG_DRV_LOCATION=/mnt/KG

if ask "Recreate backup directory?" Y; then
  rm -rf $BACKUP_DIR
  mkdir -p $BACKUP_DIR
fi

# Back up LogMeIn Hamachi config
if ask "Backup LogMeIn Hamachi?" Y; then
    mkdir -p $BACKUP_DIR/hamachi
    sudo cp -R /var/lib/logmein-hamachi ~/.backup
fi

# Back up Plex library
if ask "Backup Plex library?" Y; then
  sudo cp -R /var/lib/plex $KG_DRV_LOCATION/plex
fi

# Back up Transmission library
if ask "Backup Transmission library?" Y; then
  mkdir -p $BACKUP_DIR/transmission
  sudo cp -R ~/.config/transmission/* $BACKUP_DIR/transmission
fi

# Back up Transmission-KG library
if ask "Backup Transmission-KG library?" Y; then
  sudo chown -R matt:users /var/lib/transmission-kg
  sudo cp -R /var/lib/transmission-kg/.config/transmission-daemon/* $KG_DRV_LOCATION/transmission/
  sudo chown -R transmission:transmission /var/lib/transmission-kg
fi

# Back up fstab config file
if ask "Backup /etc/fstab?" Y; then
  sudo cp /etc/fstab $BACKUP_DIR
fi

# Back up Grub config
if ask "Backup Grub config?" Y; then
  mkdir -p $BACKUP_DIR/grub
  sudo cp /etc/default/grub $BACKUP_DIR/grub
fi

# Back up Samba config
if ask "Backup Samba config?" Y; then
  mkdir -p $BACKUP_DIR/samba
  sudo cp /etc/samba/smb.conf $BACKUP_DIR/samba
fi

# Back up UFW config
if ask "Backup UFW config?" Y; then
  mkdir -p $BACKUP_DIR/ufw
  sudo cp /etc/ufw/applications.d/custom $BACKUP_DIR/ufw
fi
