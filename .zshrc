source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh
antigen apply

antigen bundle mafredri/zsh-async
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sindresorhus/pure

source ~/.aliases.zsh
export EDITOR=nvim 

# Make Ctrl-U work properly
bindkey \^U backward-kill-line

