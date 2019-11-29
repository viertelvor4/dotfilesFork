# now SpaceVim is installed we need to link the .vimrc separately to the SpaceVim folder
# removing original .vimrc from SpaceVim first
sudo rm "$HOME/.SpaceVim/vimrc"
# link it now
ln -s "$HOME/.SpaceVim/vimrc" "$HOME/.vimrc"
