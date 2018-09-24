source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting # must be last

antigen apply > /dev/null 2>&1
