set nocompatible

so ~/.vim/plugins.vim				"pull the plugins for vim

syntax enable 

set backspace=indent,eol,start			"behaviour of Backspace
let mapleader=" "				"change personal mapping key to , (instead of \) 
set number					"disable line numbers

" turn on phpactor autocomplete for php files
autocmd FileType php setlocal omnifunc=phpactor#Complete

" turn hybrid line numbers on and toggle between abolute and relative
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END



"-------------- VISUALS - --------------------"

colorscheme  atom-dark-256-Custom		"Color Scheme that includes also some modifications for getting rid of ~

set guioptions-=e				"other tabs
set guioptions-=L				"remove sidebars on the left and the right side
set guioptions-=l

set guioptions-=R
set guioptions-=r

set scl=yes  					"force the signcolumn to appear
set nowrap            "don't use softwraps for long lines


"-------------- SEARCHING --------------------"

set hlsearch					"enable search highlighting
set incsearch					"enable ad hoc search (without pressing enter to begin search)
set showmatch  				        " Show matching brackets.
set smartcase     				" Do case insensitive matching when all lower case, but case sensitive, when containing upper case



"-------------- MAPPINGS --------------------"

"better mode management for vim modes
imap jj <Esc>					
"open quickly the zshellrc file
nmap <leader>ez :tabedit ~/.zshrc<cr>
"open quickly the vimrc file
nmap <leader>ev :tabedit $MYVIMRC<cr>
"reload vimrc file
nmap <leader>sv :source $MYVIMRC<cr>
"remove the highligting after a search
nmap <leader><space> :nohlsearch<cr>				

"Plugins
nmap <leader>pi :PluginInstall<cr>

"close all
nmap <leader>bq :qall<cr>

"open the recent files
nmap <C-E> :CtrlPMRUFiles<cr>		
"toggle the Undo tree
nmap <F5> :MundoToggle<CR>			
"when typing code, jump to the end of the line to insert ; or stuff like that:
"Ctr-O switching to NORMAL mode for one command then jump to end with $ and
"back to insert
inoremap <C-e> <C-o>$
"when typing code, jump to the beginning of the line 
inoremap <C-a> <C-o>0



"-------------- BUFFER MANAGEMENT ---------"

"go to next buffer
noremap <leader>bl :bnext<cr>
"go to prev buffer
noremap <leader>bh :bprevious<cr>
"delete buffer
noremap <leader>bd :bd<cr>
"new buffer in a vertical split
noremap <leader>bnv :vnew<cr>
"new buffer in a horizontal split
noremap <leader>bnh :new<cr>
"new buffer in the current window
noremap <leader>bnc :enew<cr>



"-------------- TAB MnNAGEMENT ------------"

"Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
"quick witho open and close
nmap <leader>tc :tabclose<cr>
nmap <leader>tn :tabe<cr>



"-------------- SPLIT MANAGEMENT ------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>



"-------------- NERD TREE -------------------"

autocmd StdinReadPre * let s:std_in=1			"open a NERDTree automatically when vim starts up if no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>



"-------------- MARKS -------------------"

nmap <Leader>m <Plug>ToggleMarkbar



"--------------	GIT ------------------------"

nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gd :Gdiff<cr>



"-------------- AUTO COMMANDS ---------------"

augroup autosourcing					"prevents VIM from creating this autocmd in every single file
	autocmd!
	autocmd BufWritePost .vimrc source %		"source the vimrc file automatically
augroup END



"------------- UNDO MANAGEMENT -------------" 
set undofile					 	" Enable persistent undo so that undo history persists across vim sessions
set undodir=~/.vim/undo



"-------------- FUZZY SEARCH ---------------"

"Search in current Buffer
noremap <leader>/ :BLines<cr> 			
"Search in all Buffers
noremap <leader>fb :Lines<cr>
"Search for files
noremap <leader>ff :FZF<cr>



"------------ PHP REACTOR -----------------"

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>



"--------------- VDEBUG ---------------------"
"---Notes:
"--- 1. set port to 9100
"--- 2. server to ''
"--- 3. path_maps to host: local (with trailing slashes)
"--- 4. set a breakpoint with :Breakpoint (not with F10)

let g:vdebug_options = {}
let g:vdebug_features = {}
let g:vdebug_options["break_on_open"] = 0
let g:vdebug_options["port"] = 9100
let g:vdebug_options["server"] = ''

" Cross paths for projects.
"
" let g:vdebug_options["path_maps"] = {
"                 "/home/vagrant/code/thrakien-web-laravel/": "/var/www/html/thrakien-web-laravel/",
"             }

"let g:vdebug_features['max_depth'] = 6
"let g:vdebug_features['max_children'] = 256
"let g:vdebug_features['max_data'] = 2048
