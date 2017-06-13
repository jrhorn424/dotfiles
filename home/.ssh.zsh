if [[ $- = *i* ]]; then
  declare -i __agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)
  if [ "$SSH_AUTH_SOCK" -a $__agent_run_state -eq 1 ]; then
    ssh-add -A
  fi
  unset __agent_run_state
fi
