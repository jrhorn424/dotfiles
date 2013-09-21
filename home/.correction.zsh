setopt correct_all

alias sudo="nocorrect sudo"
alias man='nocorrect man'
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'

[[ -x "$(which knife)" ]]    && alias knife="nocorrect knife"
[[ -x "$(which aptitude)" ]] && alias aptitude="nocorrect aptitude"
[[ -x "$(which mysql)" ]]    && alias mysql='nocorrect mysql'
