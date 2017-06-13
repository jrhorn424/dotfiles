# Changing/making/removing directory
setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt auto_name_dirs
setopt auto_pushd
setopt cdablevarS # if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack

alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  elif [[ "x$*" == "x....." ]]; then
    cd ../../..
  elif [[ "x$*" == "x......" ]]; then
    cd ../../../..
  else
    builtin cd "$@"
  fi
}

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

# List direcory contents
alias l1='tree --dirsfirst -ChFL 1'
alias l2='tree --dirsfirst -ChFL 2'
alias l3='tree --dirsfirst -ChFL 3'

alias ll1='tree --dirsfirst -ChFupDaL 1'
alias ll2='tree --dirsfirst -ChFupDaL 2'
alias ll3='tree --dirsfirst -ChFupDaL 3'

alias l='l1'
alias ll='ll1'

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F"
  alias l="gls -lAh"
  alias ll="gls -l"
  alias la='gls -A'
fi

alias sl=ls # often screw this up
alias l.='ls -d .[^.]*'
alias lh="ls -lh"
alias lah='ls -lah'
alias lt='ls -lt' # sort with recently modified first

# mkdir & cd to it
function mcd() {
  mkdir -p "$1" && cd "$1";
}
alias take='mcd'
