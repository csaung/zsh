export PATH="/opt/homebrew/bin:$PATH"

autoload -Uz colors compinit
colors
compinit -u

PROMPT='%F{cyan}%1~%f  '

bindkey -v
bindkey '^R' history-incremental-search-backward

alias vi="$(which nvim)"
alias wz="$(which nvim) ~/.config/wezterm/wezterm.lua"
alias gy="$(which nvim) ~/.config/wezterm/wezterm.lua"
alias rc="$(which nvim) ~/.config/zsh/zshrc"

export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
