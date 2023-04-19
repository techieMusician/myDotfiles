#
# ~/.bashrc
#

if [ -f $HOME/.bashrc_linux ]; then
    source $HOME/.bashrc_linux

elif [ -f $HOME/.bashrc_wslDell ]; then
    source $HOME/.bashrc_wslDell
fi

if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS='-m'
fi
