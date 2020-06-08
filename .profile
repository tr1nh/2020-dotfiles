# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# nodejs PATH
PATH="/opt/nodejs/bin:$PATH"

# default terminal emulator
export TERM=xterm-256color

# default text editor
export EDITOR=vim

# user native gtk in qt platform
export QT_QPA_PLATFORMTHEME=gtk2
