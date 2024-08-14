export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

######################################################################
export PATH="/opt/homebrew/bin:$PATH"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey -v
bindkey '^R' history-incremental-search-backward

alias vi="$(which nvim)"
alias rc="$(which nvim) ~/.config/zsh/zshrc"
alias src_rc="source ~/.zshrc"
alias lz="lazygit"

export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt EXTENDED_HISTORY

# required end of file
autoload -Uz compinit && compinit
