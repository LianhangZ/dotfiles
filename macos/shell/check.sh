# ~/dotfiles/macos/shell/check.sh
sudo -v

# alias check_code='command -v code'
check_brew() { command -v brew; }

check_font() {
  brew list --cask font-meslo-lg-nerd-font
}

check_wezterm() { command -v wezterm; }

source ~/dotfiles/macos/shell/install.sh
source ~/dotfiles/shared/shell/check.sh
source ~/dotfiles/shared/shell/install.sh

check_install brew
check_install font
check_install ohmyzsh
check_install p10k
check_install autosuggestions
check_install syntax-highlighting
check_install lazygit
check_install nvim
check_install wezterm
check_install rg
check_install fd
