autoload -U promptinit; promptinit

##
# begin color configuration
autoload -U colors; colors
autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'
#
## end color configuration

##
# begin vcs_info prompt configuration
autoload -Uz vcs_info
function prompt_precmd() { vcs_info }
add-zsh-hook precmd prompt_precmd
setopt prompt_subst

zstyle ':vcs_info:*' disable bzr cdv darcs mtn svk tla svn cvs fossil hg p4
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true

zstyle ':vcs_info:*' nvcsformats "${YELLOW}%~${RESET}"
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' formats "${GREEN}%R${RESET} on ${CYAN}(%b)${RESET}${MAGENTA}%m%c%u${RESET} in ${GREEN}%S${RESET}"
zstyle ':vcs_info:*' actionformats "${YELLOW}%R${RESET} on ${CYAN}(%b|%a)${RESET}${MAGENTA}%m%c%u${RESET} in ${GREEN}%S${RESET}"
zstyle ':vcs_info:git:*' patch-format '%10>...>%p%<< (%n applied)'

zstyle ':vcs_info:*+set-message:*' hooks home-path

function +vi-home-path () {
  hook_com[base]="${hook_com[base]/$HOME/~}"
}

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked \
  git-aheadbehind git-remotebranch git-stash

# FIXME add string when untracked
function +vi-git-untracked () {
  local untracked

  #check if there's at least 1 untracked file
  untracked=${$(git ls-files --exclude-standard --others | head -n 1)}

  if [[ -n ${untracked} ]] ; then
    hook_com[unstaged]="${hook_com[unstaged]}?"
  fi
}

# FIXME
function +vi-git-stash () {
  if [[ -s $(git rev-parse --git-dir)/refs/stash ]] ; then
    hook_com[misc]+="\$"
  fi
}

# FIXME
function +vi-git-aheadbehind () {
    local ahead behind
    local -a gitstatus

    ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
    (( $ahead )) && gitstatus+=( "+${ahead}" )

    behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
    (( $behind )) && gitstatus+=( "-${behind}" )

    hook_com[misc]+=${(j:/:)gitstatus}
}

# FIXME
function +vi-git-remotebranch () {
  local remote

  # Are we on a remote-tracking branch?
  remote=${$(git rev-parse --verify ${hook_com[branch]}@{upstream} \
    --symbolic-full-name 2>/dev/null)/refs\/remotes\/}

  if [[ -n ${remote} ]] ; then
    hook_com[branch]="${hook_com[branch]}..${remote}"
  fi
}
#
## end vcs_info prompt configuration

NEWLINE=$'\n'
PROMPT='${RED}%n${RESET}@${BLUE}%m${RESET}:${vcs_info_msg_0_}${NEWLINE}%# '
