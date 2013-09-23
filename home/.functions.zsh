function any() { # grep through running processes
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

function killnamed () {
    ps ax | grep $1 | cut -d ' ' -f 2 | xargs kill
}

function zipr() {
  zip -r $1.zip $1
}

function whatip() {
  curl ifconfig.me
}

function cdc() {
    cd $1; ls
}
