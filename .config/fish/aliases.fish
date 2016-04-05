# Map ls command to something more useful
alias ls  "ls -hl --color=auto --group-directories-first"
alias lsa "ls -hlA --color=auto --group-directories-first"

# Git commands
alias ga  "git add --all"
alias gc  "git commit -m"
alias gch "git checkout"
alias gcl "git clone"
alias gp  "git push"
alias gpl "git pull"
alias gr  "git rm --cached"
alias gs  "git status"

# Alias to backup routine
alias mjlbackup "/home/matt/.scripts/backup/mjl-backup.sh"

# Aliases to common directories
alias dls  "cd /mnt/Downloads"
alias drop "cd ~/Dropbox"
function kg
	cd /mnt/KG/$argv[1]
end

# Media aliases
function mountfilmiso
	sudo mount $argv[1] /mnt/dvd
	vlc /mnt/dvd/VIDEO_TS
end
alias umountfilmiso "sudo umount /mnt/dvd"
alias playfilmiso 	"vlc /mnt/dvd/VIDEO_TS"

# Aliases to edit system config files (root access)
alias fstab		  "sudo nano /etc/fstab"
alias grub-config "sudo nano /etc/default/grub"
alias smb-config  "sudo nano /etc/samba/smb.conf"

# Aliases to control daemons (root access)
alias plex-restart  "sudo systemctl daemon-reload; and sudo systemctl restart plexmediaserver.service"
alias tx-restart 	"sudo systemctl daemon-reload; and sudo systemctl restart transmission.service"
alias tx-kg-restart "sudo systemctl daemon-reload; and sudo systemctl restart transmission-kg.service"
