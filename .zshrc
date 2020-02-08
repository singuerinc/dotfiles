# Path to your oh-my-zsh configuration.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
ZSH=$HOME/src/oh-my-zsh

#ZSH_THEME="refined"
#ZSH_THEME="spaceship"
ZSH_THEME=""
autoload -U promptinit; promptinit
prompt pure;

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

CASE_SENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

VSCODE=code

plugins=(yarn git history sudo zsh-autosuggestions vi-mode zsh-syntax-highlighting osx history-substring-search z fzf vscode)

source $ZSH/oh-my-zsh.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export GPG_TTY=$(tty)
