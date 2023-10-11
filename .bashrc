# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ "$HOSTNAME" = "DESKTOP-JFSITV1" ]; then
    source $HOME/.bashrc_wslDell

elif [ "$HOSTNAME" = "lunamusic" ]; then
    source $HOME/.bashrc_linux
fi
