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

# Restore LogMeIn Hamachi config
if ask "Restore LogMeIn Hamachi from backup?" Y; then
  sudo cp -R $BACKUP_DIR/hamachi/* /var/lib/logmein-hamachi/
fi

# Restore Plex library
if ask "Restore Plex library from backup?" Y; then
  sudo cp -R $KG_DRV_LOCATION/plex/* /var/lib/plex/
  sudo chown -R plex:plex /var/lib/plex
  sudo systemctl daemon-reload
  sudo systemctl restart plexmediaserver
fi

# Restore Transmission library
if ask "Restore Transmission library from backup?" Y; then
  sudo cp -R $BACKUP_DIR/transmission/* ~/.config/transmission
  sudo chown -R matt:users ~/.config/transmission
fi

# Restore Transmission-KG library
if ask "Restore Transmission-KG library from backup?" Y; then
  sudo cp -R /var/lib/transmission-kg/.config/transmission-daemon/* $KG_DRV_LOCATION/transmission/
  sudo chown -R transmission:transmission /var/lib/transmission-kg
  sudo systemctl daemon-reload
  sudo systemctl restart transmission-kg
fi

# Back up fstab config file
if ask "Restore /etc/fstab from backup?" Y; then
  sudo cp $BACKUP_DIR/fstab /etc/
fi

# Back up Grub config
if ask "Restore Grub config from backup?" Y; then
  sudo cp $BACKUP_DIR/grub/grub /etc/default
  sudo grub-mkconfig -o /boot/grub/grub.cfg
fi

# Back up Samba config
if ask "Restore Samba config from backup?" Y; then
  sudo cp $BACKUP_DIR/samba/smb.conf /etc/samba/
fi

# Back up UFW config
if ask "Restore UFW config from backup?" Y; then
  sudo cp $BACKUP_DIR/ufw/user.rules /etc/ufw/
  sudo cp $BACKUP_DIR/ufw/user6.rules /etc/ufw/
  sudo cp $BACKUP_DIR/ufw/custom /etc/ufw/applications.d/
fi
