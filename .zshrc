
export ZSH="/home/michael/.oh-my-zsh"

ZSH_THEME="agnoster"

DISABLE_AUTO_UPDATE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
