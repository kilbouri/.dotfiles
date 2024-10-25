# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set Aliases
source ~/.zsh_aliases

# Set command line editor
export EDITOR="vim"
export VISUAL="$EDITOR"

# Workaround for kitty having actual standard behaviour for
# `clear`, because I am unfortunately too used to xterm's
# non-standard behaviour
clear() {
    if [ "$TERM" = "xterm-kitty" ]; then
        command clear -T xterm "$@"
    else
        command clear "$@"
    fi
}

# Use Ctrl + Backspace to erase a word
bindkey '^H' backward-delete-word

# ASDF mounting
. /opt/asdf-vm/asdf.sh
