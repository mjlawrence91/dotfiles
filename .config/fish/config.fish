# Path to Oh My Fish install.
set -gx OMF_PATH /home/matt/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/matt/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Load z into shell
source $HOME/.config/z-fish/z.fish
source $HOME/.config/fish/functions/z.fish
source $HOME/.config/fish/completions/z.fish

# WORKAROUND: Tried to print invalid wide character string
set --global --export LANG en_GB.UTF-8
set --global --export LC_ALL en_GB.UTF-8

# Ensure that numpad Enter key works
xmodmap ~/.Xmodmap

# Map ls command to something more useful
alias ls="ls -hl --color=auto"
alias lsa="ls -hla --color=auto"

# Load Ranger rc.conf in Home directory
set RANGER_LOAD_DEFAULT_RC=FALSE

# Configure theme
set -g theme_display_git_ahead_verbose yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_title_display_process yes
set -g theme_avoid_ambiguous_glyphs yes

# Configure greeting
function fish_greeting
    set_color $fish_color_autosuggestion[1]
    uname -nsr
    uptime
    set_color normal
end
