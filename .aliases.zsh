# Map ls command to something more useful
# alias ls="ls -Ghl"
# alias lsa="ls -AGhl"
# alias ls="gls -hl --color=auto --group-directories-first"
# alias lsa="gls -hlA --color=auto --group-directories-first"
alias ls="eza -hl --color=auto --icons=auto --git --git-repos --header --group-directories-first"
alias lsa="eza -Ahl --color=auto --icons=auto --git --git-repos --header --group-directories-first"

# OMZ aliases
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias /="cd /"

# Git commands
alias ga="git add --all"
alias gc="git commit -m"
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
alias nig="npm install --global"
alias nis="npm install --save"
alias np="npm prune"
alias nr="npm run $1"
alias nrt="npm run test"
alias nrwt="npm run watch:test"
alias nrs="npm run start"
alias nrd="npm run dev"

# SSH commands
alias arch="ssh mjl@mjl-arch -t tmux -u new-session -A -s mjl-arch"
alias studio="ssh mjl@mjl-studio -t /opt/homebrew/bin/tmux -u new-session -A -s mjl-studio"

# Aliases to common directories
alias drop="cd ~/Dropbox"
alias dev="cd ~/Development"

# Aliases to edit config files
alias v="nvim"
alias zshrc="v ~/.zshrc"
alias zalias="v ~/.aliases.zsh"
alias known_hosts="v ~/.ssh/known_hosts"

# Aliases to edit system config files (root access)
alias hosts="sudo v /private/etc/hosts"
