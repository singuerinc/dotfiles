# Path to your oh-my-zsh configuration.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
ZSH=$HOME/src/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="clean"
#ZSH_THEME="garyblessington"
#ZSH_THEME="pure"
#ZSH_THEME="dracula"
#ZSH_THEME="gozilla"
#ZSH_THEME="mrtazz"

# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(git history-substring-search docker history httpie sudo zsh-autosuggestions brew-cask vi-mode docker-compose zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.nodenv/shims:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Customize to your needs...
source ~/.aliases
source ~/.functions

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

KEYTIMEOUT=1

export EDITOR=vim
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

export NODENV_ROOT=/usr/local/var/nodenv

if [ -f ~/.zshrc-local ]; then
    source ~/.zshrc-local
fi

autoload -U promptinit && promptinit
prompt pure

export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
