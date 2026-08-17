path_dirs=(
    "$HOME/.local/bin"
    "/opt/homebrew/bin"
)
for dir in "${path_dirs[@]}"; do
    export PATH="$dir:$PATH"
done
unset path_dirs dir

bindkey -v
bindkey '^R' history-incremental-search-backward

alias vi="$(which nvim)"

export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history

autoload -U add-zsh-hook
function venv_cd() {
  if [[ -d "./.venv" ]]; then
    if [[ "$VIRTUAL_ENV" != "$(pwd)/.venv" ]]; then
      source .venv/bin/activate
    fi
  elif [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
  fi
}
add-zsh-hook chpwd venv_cd

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit

PROMPT='%F{cyan}%~%f '
