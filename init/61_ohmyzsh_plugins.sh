# Installing theme for zshell
  e_header "Installing zshell plugins"
  if [[ -d "$HOME/.oh-my-zsh/custom/plugins" ]]; then
        cd "$HOME"/.oh-my-zsh/custom/plugins
        git clone https://github.com/zsh-users/zsh-autosuggestions
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
        git clone https://github.com/djui/alias-tips.git
  fi

  if [[ -d "$HOME/.oh-my-zsh/custom/themes" ]]; then
        cd "$HOME"/.oh-my-zsh/custom/themes
        git clone https://github.com/bhilburn/powerlevel9k.git
  fi
