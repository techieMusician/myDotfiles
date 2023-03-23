#
# ~/.bashrc
#

if [ -f $HOME/.bashrc_linux ]; then
    source $HOME/.bashrc_linux

elif [ -f $HOME/.bashrc_wslDell ]; then
    source $HOME/.bashrc_wslDell
fi
