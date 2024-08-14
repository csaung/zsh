export PATH="/opt/homebrew/bin:$PATH"

bindkey -v
bindkey '^R' history-incremental-search-backward

alias vi="$(which nvim)"
alias wz="$(which nvim) ~/.config/wezterm/wezterm.lua"
alias rc="$(which nvim) ~/.config/zsh/zshrc"

export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
