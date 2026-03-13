# ~/dotfiles/macos/shell/install.sh
sudo -v

install_brew() {
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

# alias install_code='brew install --cask visual-studio-code'

install_font() {
  brew install --cask font-meslo-lg-nerd-font
}

install_p10k() {
  git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
}

install_autosuggestions() {
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
}

install_syntax-highlighting() {
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
}

install_lazygit() {
  brew install lazygit
}

install_nvim() {
  brew install neovim
}

install_wezterm() {
  brew install --cask wezterm
}

install_rg() {
  brew install ripgrep
}

# brew install --cask iterm2 >> install_iterm2.log 2>&1
# brew install tmux
# brew install ncdu
# brew install gh
# brew install --cask google-chrome
# brew install --cask visual-studio-code
# brew install --cask datagrip
# brew install --cask karabiner-elements

# # git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k >> install_powerlevel10k.log 2>&1 || true
# install_and_log_allow_fail "p10k" "install_p10k.log" git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
# # git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions >> install_autosuggestions.log 2>&1 || true
# install_and_log_allow_fail "autosuggestions" "install_autosuggestions.log" git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# # git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting >> install_syntax-highlighting.log 2>&1 || true
# install_and_log_allow_fail "syntax-highlighting" "install_syntax-highlighting.log" git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# # git clone https://github.com/LianhangZ/postgresql-15.15.git ~/postgresql-15.15
