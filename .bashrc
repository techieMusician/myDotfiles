#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]$(gitprompt-rs)\$ '
export EDITOR="vim"
export VISUAL="vim"
export PATH="${PATH}:/home/mike/.local/bin"

[ -f "/home/mike/.ghcup/env" ] && source "/home/mike/.ghcup/env" # ghcup-env
[ -f "/usr/share/fzf/key-bindings.bash" ] && source "/usr/share/fzf/key-bindings.bash" # fzf settings
[ -f "/usr/share/fzf/completion.bash" ] && source "/usr/share/fzf/completion.bash" # fzf settings
# Troubleshoot cs50 lib
export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export C_INCLUED_PATH=/usr/local/lib
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
alias config='/usr/bin/git --git-dir=/home/mike/.cfg/ --work-tree=/home/mike'
