#!/bin/bash
D_ALACRITTY=$HOME/.config/alacritty/alacritty.yml
D_NVIM=$HOME/.config/nvim/init.vim

# alacritty
sed -i '$ d' $D_ALACRITTY ; echo "colors: *ohdark" >> $D_ALACRITTY

# nvim
sed -i '$ d' $D_NVIM ; echo "colorscheme onehalfdark" >> $D_NVIM

# realod all actie vim windows
for path in $(nvr --nostart --serverlist)
do
	nvr --nostart --servername $path -cc 'so $HOME/.config/nvim/init.vim'
done

# show current theme indicator
echo " 🌑 "
