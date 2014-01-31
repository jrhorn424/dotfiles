if [ $IS_MAC ]; then
  eval `gdircolors $HOME/.dir_colors`
else
  eval `dircolors $HOME/.dir_colors`
fi

