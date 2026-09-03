set -e; sudo -v || exit 1

source ~/dotfiles/shared/function.sh

if [[ "$(uname -s)" == "Darwin" ]]; then
  check_install brew
  check_install fd
  check_install aerospace
  check_install sketchybar
  link_zsh "$HOME/dotfiles/macos/zsh"
  ln -sf ~/dotfiles/macos/aerospace.toml ~/.aerospace.toml
  ln -sf ~/dotfiles/macos/wezterm.lua    ~/.wezterm.lua
elif [[ "$(uname -s)" == "Linux" ]]; then
  source /etc/os-release

  check_install zsh
  link_zsh "$HOME/dotfiles/linux/shared/zsh"

  # chsh -s $(which zsh)
  if [ -n "$CI" ]; then
    echo "CI detected, skip chsh"
  else
    chsh -s "$(command -v zsh)"
  fi
fi

check_install nvim
check_install lazygit
check_install ohmyzsh
check_install p10k
check_install autosuggestions
check_install syntax-highlighting
check_install rg

link_nvim
link_lazygit
ln -sf ~/dotfiles/shared/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/shared/tmux.conf ~/.tmux.conf
