# .bash_profile
export EDITOR=vim
export PAGER='less -r'
export P4CONFIG=".p4config"
export P4EDITOR="$EDITOR"
export P4IGNORE=".ignore"

umask 022

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
