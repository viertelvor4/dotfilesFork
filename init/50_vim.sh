# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim
# Install Vundle 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
	vim +PluginInstall +qall
fi
