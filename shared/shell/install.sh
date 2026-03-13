source ~/dotfiles/shared/shell/logging.sh

install_app() {
  installing_message "$1"
  mkdir -p ~/dotfiles/log/
  "install_$1" > "$(get_log_path $1)" 2>&1
  echo " -> completed"
}

install_ohmyzsh() {
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_p10k() {
  git clone https://github.com/romkatv/powerlevel10k.git \
    ~/.oh-my-zsh/custom/themes/powerlevel10k
}

install_autosuggestions() {
  git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

install_syntax-highlighting() {
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}