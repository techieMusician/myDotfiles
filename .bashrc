# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f $HOME/.bashrc_linux ]; then
    source $HOME/.bashrc_linux

elif [ -f $HOME/.bashrc_wslDell ]; then
    source $HOME/.bashrc_wslDell
