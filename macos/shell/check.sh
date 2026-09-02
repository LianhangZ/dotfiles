# ~/dotfiles/macos/shell/check.sh
sudo -v

# alias check_code='command -v code'
check_brew() { command -v brew; }

check_font() {
  brew list --cask font-meslo-lg-nerd-font
}

check_wezterm() { command -v wezterm; }

install_brew() {
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

install_font() { brew install --cask font-meslo-lg-nerd-font; }
install_lazygit() { brew install lazygit; }
install_nvim() { brew install neovim; }
install_wezterm() { brew install --cask wezterm; }
install_rg() { brew install ripgrep; }
install_fd() { brew install fd; }

install_aerospace() { brew install --cask nikitabobko/tap/aerospace; }

install_sketchybar() {
  brew tap FelixKratz/formulae
  brew trust felixkratz/formulae
  brew install sketchybar
}

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
