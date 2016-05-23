# Map ls command to something more useful
alias ls  "ls -hl --color=auto --group-directories-first"
alias lsa "ls -hlA --color=auto --group-directories-first"

# Git commands
alias ga  "git add --all"
alias gc  "git commit -m"
alias gch "git checkout"
alias gcl "git clone"
alias gd  "git diff HEAD"
alias gp  "git push"
alias gpl "git pull"
alias gr  "git rm --cached"
alias gs  "git status"

# NPM commands
alias ni   "npm install"
alias nig  "npm install -g"
alias nis  "npm install --save"
alias nid  "npm install --save-dev"
alias np   "npm prune"
alias nrt  "npm run test"
alias nrwt "npm run watch:test"
alias nrs  "npm run start"

function nr
    npm run $argv[1]
end

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

# App aliases
alias ya "yaourt --nameonly --color --pager"

# Aliases to edit config files
set DOTFILES 		"~"
alias v				"nvim"
alias vinit			"cd $DOTFILES; and v .config/nvim/init.vim"
alias vbundle		"cd $DOTFILES; and v .config/nvim/bundle.vim"
alias zshrc			"v $DOTFILES/.zshrc; and source ~/.zshrc"
alias zaliases		"v $DOTFILES/.aliases.zsh; and source ~/.zshrc"
alias fishconfig	"v $DOTFILES/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias fishaliases	"v $DOTFILES/.config/fish/aliases.fish; and source ~/.config/fish/aliases.fish"

# Aliases to edit system config files (root access)
alias fstab		  "sudo nano /etc/fstab"
alias grub-config "sudo nano /etc/default/grub"
alias smb-config  "sudo nano /etc/samba/smb.conf"

# Aliases to control daemons (root access)
alias plex-restart  "sudo systemctl daemon-reload; and sudo systemctl restart plexmediaserver.service"
alias tx-restart 	"sudo systemctl daemon-reload; and sudo systemctl restart transmission.service"
alias tx-kg-restart "sudo systemctl daemon-reload; and sudo systemctl restart transmission-kg.service"
