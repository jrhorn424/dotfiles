setopt APPEND_HISTORY         # Allow multiple terminal sessions to all append to one zsh command history
setopt INC_APPEND_HISTORY     # Add comamnds as they are typed, don't wait until shell exit
setopt HIST_EXPIRE_DUPS_FIRST # when trimming history, lose oldest duplicates first
setopt HIST_IGNORE_ALL_DUPS   # clean up history as commands are executed
setopt HIST_IGNORE_DUPS       # Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_SPACE     # remove command line from history list when first character on the line is a space
setopt HIST_FIND_NO_DUPS     # When searching history don't display results already cycled through twice
setopt HIST_SAVE_NO_DUPS     #
setopt HIST_REDUCE_BLANKS    # Remove extra blanks from each command line being added to history
setopt HIST_VERIFY           # don't execute, just expand history
setopt SHARE_HISTORY         # imports new commands and appends typed commands to history
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_NO_FUNCTIONS

## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
