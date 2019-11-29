# now SpaceVim is installed we need to add some lines to its vimrc file 
# see: https://unix.stackexchange.com/questions/77277/how-to-append-multiple-lines-to-a-file
sudo tee -a  "$HOME/.SpaceVim/vimrc" <<EOT

"----------------- BASICS -------------------
let mapleader=" "                               "change personal mapping key to space (instead of \)

"----------------- MAPPINGS -----------------
" better mode managemanet for vim
imap jj <Esc>
EOT
