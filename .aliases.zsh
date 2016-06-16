# Map ls command to something more useful
alias ls="ls -hl --color=auto --group-directories-first"
alias lsa="ls -hlA --color=auto --group-directories-first"

# Git commands
alias ga="git add --all"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff HEAD"
alias gch="git checkout"
alias gcl="git clone $1 $2"
alias gp="git push"
alias gpl="git pull"
alias gr="git rm --cached"
alias gs="git status"

# NPM commands
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="sudo npm install --global"
alias nis="npm install --save"
alias np="npm prune"
alias nr="npm run $1"
alias nrd="npm run dev"
alias nrt="npm run test"
alias nrwt="npm run watch:test"
alias nrs="npm run start"

# Aliases to common directories
alias drop="cd ~/Dropbox"
alias dls="cd /mnt/Downloads"

# Aliases to edit config files
DOTFILES="~"
alias v="nvim"
alias vinit="cd $DOTFILES && v .config/nvim/init.vim"
alias vbundle="cd $DOTFILES && v .config/nvim/bundle.vim"
alias zshrc="v $DOTFILES/.zshrc && source $DOTFILES/.zshrc"
alias zalias="v $DOTFILES/.aliases.zsh && source $DOTFILES/.zshrc"
alias fishconfig="v $DOTFILES/.config/fish/config.fish"
alias fishalias="v $DOTFILES/.config/fish/aliases.fish"
