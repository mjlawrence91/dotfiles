# Load z.sh into PATH variable
set -gx PATH $PATH /usr/lib

# Path to Oh My Fish install.
set -gx OMF_PATH /home/matt/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/matt/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Load z into shell
source $OMF_PATH/pkg/z/init.fish

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
