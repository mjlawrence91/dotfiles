# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

export LC_ALL=en_GB.UTF-8

# Set directory for zinit and plugins.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if it's not there yet.
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/load zinit.
source "${ZINIT_HOME}/zinit.zsh"

# Add powerlevel10k prompt.
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add zsh plugins.
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Add zsh completions.
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZP::history
zinit snippet OMZP::node
zinit snippet OMZP::npm
zinit snippet OMZP::yarn
zinit snippet OMZP::github
zinit snippet OMZP::rsync
zinit snippet OMZP::ssh

# Add macOS-specific completions.
zinit snippet OMZP::macos
zinit snippet OMZP::brew

# Add Arch-specific completions.
# zinit snippet OMZP::archlinux
# zinit snippet OMZP::systemd

# Load completions.
autoload -Uz compinit && compinit
zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings.
bindkey -e # Set to Emacs mode.
bindkey '^p' history-search-backward # Cycle back through history.
bindkey '^n' history-search-forward # Cycle forwards through history.
bindkey '^U' backward-kill-line # Make Ctrl-U work properly.

# History configuration.
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling.
zstyle ':completion' matcher-list 'm:{a-z}={A-Za-z}' # Make completion case-insensitive.

# Add my aliases.
source ~/.aliases.zsh

# Use nvim as default editor.
export EDITOR=nvim

# Load zoxide.
eval "$(zoxide init --cmd cd zsh)"

# Add Homebrew completion.
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Add applications installed with Homebrew to PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Node.js 22 and OpenJDK 17 to PATH.
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
