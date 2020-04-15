#!/bin/bash

BRANCH="\ue0a0"

typeset -aHg PROMPT_SEGMENTS=(
    prompt_user
    prompt_dir
    prompt_git
)

prompt_user(){
  print -n "%B$LOGNAME%b "
}

prompt_dir(){
  print -nrD "%B%F{39}$PWD%f%b "
}
# Git: branch/detached head, dirty status
prompt_git() {
  ref="$vcs_info_msg_0_"
  if [[ -n "$ref" ]]; then
    print -n "$BRANCH %B%F{40}$ref%b%f"
  fi
}

prompt_main(){
  RETVAL=$?
  for prompt_segment in "${PROMPT_SEGMENTS[@]}"; do
    [[ -n prompt_segment ]] && $prompt_segment
  done
}

prompt_precmd() {
  vcs_info
  PROMPT='$(prompt_main)
> '
}

prompt_setup() {
  autoload -Uz add-zsh-hook
  autoload -Uz vcs_info

  add-zsh-hook precmd prompt_precmd

  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:git*' formats '%b'
}

prompt_setup "$@"
