filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.dotfiles/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-vinegar'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'simnalamburt/vim-mundo'
	Plugin 'vim-airline/vim-airline'
	Plugin 'scrooloose/nerdtree'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-commentary'
	Plugin 'tpope/vim-repeat'
	Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plugin 'junegunn/fzf.vim'
	Plugin 'StanAngeloff/php.vim'
	Plugin '2072/PHP-Indenting-for-VIm'
	Plugin 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
	Plugin 'jeetsukumaran/vim-markology'
	Plugin 'tpope/vim-fugitive'
	" Plugin 'Yilin-Yang/vim-markbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

