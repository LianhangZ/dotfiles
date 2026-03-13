# ~/dotfiles/shared/shell/check.sh
source ~/dotfiles/shared/shell/logging.sh

check_install() {
  if "check_$1" > /dev/null 2>&1; then
    install_already_message "$1"
  else
    install_app "$1"
  fi
}

check_link() {
  if [ -f "$1" ]; then
    echo "$1 ALREADY linked -> $(readlink "$1")"
  else
    echo "$1 NOT EXISTED"
  fi
}

check_nvim() {
  command -v nvim
}

check_lazygit() {
  command -v lazygit
}

check_rg() {
  command -v rg
}

check_docker() {
  command -v docker
}

check_ohmyzsh() {
  [ -d "$HOME/.oh-my-zsh" ]
}

check_p10k() {
  [ -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]
}

check_autosuggestions() {
  [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]
}

check_syntax-highlighting() {
  [ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]
}