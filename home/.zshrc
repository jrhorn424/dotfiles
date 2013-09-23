#!/usr/bin/env zsh
# Idea to load all files that end in .zsh from holman.
# See: https://github.com/holman/dotfiles

# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# all of our zsh files
typeset -U config_files
config_files=($HOME/.*.zsh)

# load the path files
for file in ${(M)config_files:#*path.zsh}
do
  source $file
done

# load everything but the path and completion files
for file in ${${config_files:#*path.zsh}:#*completion.zsh}
do
  source $file
done

# load every completion after autocomplete loads
for file in ${(M)config_files:#*completion.zsh}
do
  source $file
done

unset config_files
