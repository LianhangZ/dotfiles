set -e; sudo -v

source ~/dotfiles/shared/function.sh

if [[ "$(uname -s)" == "Darwin" ]]; then
  link_zsh "$HOME/dotfiles/macos/zsh"
elif [[ "$(uname -s)" == "Linux" ]]; then
  source /etc/os-release

  link_zsh "$HOME/dotfiles/linux/shared/zsh"

  if [[ "$ID" == "debian" ]]; then
    echo "DEBIAN"
  elif [[ "$ID" == "ubuntu" ]]; then
    echo "UBUNTU"
  fi
fi

link_nvim
link_lazygit
