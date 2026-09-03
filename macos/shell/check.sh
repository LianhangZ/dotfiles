# ~/dotfiles/macos/shell/check.sh
sudo -v

# alias check_code='command -v code'

check_font() {
  brew list --cask font-meslo-lg-nerd-font
}

check_wezterm() { command -v wezterm; }

install_font() { brew install --cask font-meslo-lg-nerd-font; }
install_wezterm() { brew install --cask wezterm; }

check_install font
check_install wezterm
