# Map ls command to something more useful.
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

# Useful utils.
alias nukedstore="find . -name '.DS_Store' -type f -delete | xargs du -chs"

# Open current project in VS Code.
alias co="code ."

# Media shortcuts.
alias ii="/Applications/IINA.app/Contents/MacOS/iina-cli"

# Create a GIF from a YouTube video URL and timestamps.
alias techgif="~/.scripts/create-techgif.sh"

# Git commands.
alias ga="git add --all"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff HEAD"
alias gch="git checkout"
alias gcl="git clone $1 $2"
alias gp="git push"
alias gpl="git pull"
alias grm="git rm --cached"
alias gs="git status -s"

# NPM commands.
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="sudo npm install --global"
alias np="npm prune"
alias nr="npm run $1"
alias nrd="npm run dev"
alias nrt="npm run test"
alias nrwt="npm run watch:test"
alias nrs="npm run start"


# SSH commands.
alias arch="ssh mjl@mjl-arch -t tmux -u new-session -A -s mjl-arch"

# Aliases to common directories.
alias drop="cd ~/Dropbox"
alias dev="cd /Users/mjl/Development/$1"
alias dls="cd ~/Downloads"

# Aliases to edit config files.
alias v="nvim"
alias known_hosts="v .ssh/known_hosts"

# Aliases to edit system config files (root access).
alias hosts="sudo nvim /private/etc/hosts"
