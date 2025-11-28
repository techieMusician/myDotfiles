# config.nu
#
# Installed by:
# version = "0.108.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
# Set Environment Variables
$env.EDITOR = "nvim"
$env.config.edit_mode = "vi"
#Set alias for configGit for configfiles in bare repo
alias configgit = /usr/bin/git --git-dir=($env.HOME)/.cfg/ --work-tree=($env.HOME)
#alias confignvim = nvim $"--GIT_DIR=($env.HOME)/.cfg" $"--GIT_WORK_TREE=($env.HOME)"
def "confignvim" [...rest] {
  with-env { GIT_DIR: "/home/mike/.cfg/" GIT_WORK_TREE: "/home/mike/" } {
^nvim ...$rest}
}
