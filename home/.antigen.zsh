source $HOME/.homesick/repos/dotfiles/home/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  extract
  fasd
  rand-quote
  vundle

  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search

  sharat87/zsh-vim-mode
EOBUNDLES

antigen theme robbyrussell

antigen apply