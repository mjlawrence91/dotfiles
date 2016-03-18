# Map ls command to something more useful
alias ls  "ls -hl --color=auto"
alias lsa "ls -hla --color=auto"

# Git commands
alias ga  "git add --all"
alias gc  "git commit -m"
alias gch "git checkout"
alias gp  "git push"
alias gpl "git pull"
alias gr  "git rm --cached"
alias gs  "git status"

# Alias to backup routine
alias mjlbackup "/home/matt/.scripts/backup/mjl-backup.sh"

# Aliases to edit system config files (root access)
alias fstab		  "sudo nano /etc/fstab"
alias grub-config "sudo nano /etc/default/grub"
alias smb-config  "sudo nano /etc/samba/smb.conf"

# Aliases to control daemons (root access)
alias plex-restart  "sudo systemctl daemon-reload; and sudo systemctl restart plexmediaserver.service"
alias tx-restart 	"sudo systemctl daemon-reload; and sudo systemctl restart transmission.service"
alias tx-kg-restart "sudo systemctl daemon-reload; and sudo systemctl restart transmission-kg.service"
