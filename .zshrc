# Path to your oh-my-zsh configuration.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
ZSH=$HOME/src/oh-my-zsh

#ZSH_THEME="pure"

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting history-substring-search docker history httpie sudo zsh-autosuggestions brew-cask vi-mode docker-compose)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Customize to your needs...
source ~/.aliases
source ~/.functions

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

KEYTIMEOUT=1

export EDITOR=vim
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

if [ -f ~/.zshrc-local ]; then
    source ~/.zshrc-local
fi
autoload -U promptinit && promptinit
prompt pure
