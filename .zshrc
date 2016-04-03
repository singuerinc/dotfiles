# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"
ZSH_THEME="garyblessington"
ZSH_THEME="pure"
ZSH_THEME="dracula"
ZSH_THEME="honukai"
ZSH_THEME="gozilla"
#ZSH_THEME="zeta"
ZSH_THEME="mrtazz"

# Example aliases
alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting history-substring-search docker atom forklift git-flow history httpie sudo zsh-autosuggestions tmuxinator)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Customize to your needs...

source ~/.singuerinc

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

source ~/.aliases
source ~/.functions

alias ports="sudo lsof -i -P|grep -e 'LISTEN'"
unalias j

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

KEYTIMEOUT=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export EDITOR=nvim
