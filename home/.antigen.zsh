source $HOME/.homesick/repos/dotfiles/home/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  zsh-users/zsh-history-substring-search
EOBUNDLES

antigen apply
