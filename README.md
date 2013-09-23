Dotfiles v2.0
=============
[Homeshick](https://github.com/andsens/homeshick) compatible dotfiles. This
castle should be used to hold minimal setup to make you feel at home on a remote
box, not a full configuration for a new personal computer.

New boxes can be bootsrapped with a simple
[script](https://gist.github.com/andsens/2913223) to pull down only the castles
you want. A more complete setup, say for a new laptop, can be done with a
different script.

## Dependencies
It's nice to have the following software:

  - [homeshick](https://github.com/andsens/homeshick)
  - [fasd](https://github.com/clvv/fasd)

## What's inside
### General
  - [base16 colors](https://github.com/chriskempson/base16) for everything: vim,
    zsh
  - Prefer vim key motion instead of emacs (`bindkey -v`)

### zsh
  - [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  - [antigen](https://github.com/zsh-users/antigen) for package management

## Goals
I used to keep a monolithic dotfiles repository, but it was a pain to symlink. I
switched to [holman's dotfiles](https://github.com/holman/dotfiles), but that
was still monolithic, OSX dependent, and contained a lot of customization I
didn't want on remote boxes. [vcsh](http://finance.yahoo.com/q?s=vcsh) seemed
like a great solution, but I can't wrap my head around that.
[Homesick](https://github.com/technicalpickles/homesick) was simpler, and
[homeshick](https://github.com/andsens/homeshick) didn't have a ruby dependency.

Consider this my dotfile manifesto. Going forward, dotfiles should be:

  - Cross-platform compatible, ideally configurations separated with parallel
    topic structures
  - Topically organized
  - Can check out bits and pieces as needed, or all in one go
  - Depends only on shell being installed
  - Should integrate easily with frameworks
  - Should be easy to wrap my head around (*not* omz, dotzsh, etc.)
  - Should remain minimal (only installs necessary packages, defines highly
    reusable functions, not every configuration gets checked in, etc.)

## TODO

  - Setup zsh
  - Setup vim
  - Automatic deployment script
  - Setup other dots
