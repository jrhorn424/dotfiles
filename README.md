Dotfiles v2.0
=============

[Homeshick][1] compatible dotfiles. This
castle should be used to hold minimal setup to make you feel at home on a remote
box, not a full configuration for a new personal computer.

New boxes can be bootsrapped with a simple
[script][2] to pull down only the castles
you want. A more complete setup, say for a new laptop, can be done with a
different script.

## What's inside
### General
  - [vcsh][3] or
    [homeshick][4]
  - [freshshell][5]
  - [base16 colors][6] for everything: vim,
    zsh
  - Prefer vim key motion instead of emacs (`bindkey -v`)

### Vim
  - [vundle][7] for package management
  - Packages from [spf13vim][8]
  - [vim-airline][9] status bar

### zsh
  - Prefer [prezto][10] over [oh-my-zsh][11]
  - Nice airline-style [prompt][12]
  - [antigen][13] for package management

### git
  - [git-extras][14]

## Goals
I used to keep a monolithic dotfiles repository, but it was a pain to symlink. I
switched to [holman's dotfiles][15], but that
was still monolithic, OSX dependent, and contained a lot of customization I
didn't want on remote boxes. [vcsh][16] seemed
like a great solution, but I can't wrap my head around that.
[Homesick][17] was simpler, and
[homeshick][18] didn't have a ruby dependency.

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


[1]: https://github.com/andsens/homeshick
[2]: https://gist.github.com/andsens/2913223
[3]: https://github.com/RichiH/vcsh
[4]: https://github.com/andsens/homeshick
[5]: http://freshshell.com/
[6]: https://github.com/chriskempson/base16
[7]: https://github.com/gmarik/vundle
[8]: http://vim.spf13.com/
[9]: https://github.com/bling/vim-airline
[10]: https://github.com/sorin-ionescu/prezto
[11]: https://github.com/robbyrussell/oh-my-zsh
[12]: https://github.com/paradox460/prezto/blob/paradox/modules/prompt/functions/prompt_paradox_setup
[13]: https://github.com/zsh-users/antigen
[14]: https://github.com/visionmedia/git-extras
[15]: https://github.com/holman/dotfiles
[16]: http://finance.yahoo.com/q?s=vcsh
[17]: https://github.com/technicalpickles/homesick
[18]: https://github.com/andsens/homeshick
