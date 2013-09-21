alias reload!='. ~/.zshrc'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'
alias h='history'

# Processes
alias tu='top -o cpu' # cpu
alias tm='top -o rsize' # memory

alias c='clear'
alias cl='clear; l'
function cdc() {
    cd $1; ls
}
alias cls='clear; ls'

alias k9="killall -9"
function killnamed () {
    ps ax | grep $1 | cut -d ' ' -f 2 | xargs kill
}
