# Installing theme for zshell
  if [[ -d "$HOME/.oh-my-zsh/custom/plugins" ]]; then
    e_header "Installing zshell plugins"
    (
        cd $HOME/.oh-my-zsh/custom/plugins
        git clone https://github.com/bhilburn/powerlevel9k.git
        git clone https://github.com/zsh-users/zsh-autosuggestions
        git clone https://github.com/zdharma/fast-syntax-highlighting.git
        git clone https://github.com/djui/alias-tips.git
    )
  fi

