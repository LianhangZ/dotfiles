set -e

sudo -v || exit 1

printf "installing homebrew..."
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >> install_homebrew.log 2>&1

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
printf "completed\n"

install_and_log() {
    local app="$1"
    local logfile="$2"
    shift 2
    printf "installing %s..." "$app"
    "$@" >> "$logfile" 2>&1
    printf "completed\n"
}

# brew install neovim >> install_neovim.log 2>&1
install_and_log "neovim" "install_neovim.log" brew install neovim
# brew install --cask font-meslo-lg-nerd-font >> install_meslo-nerd-font.log 2>&1
install_and_log "meslo-nerd-font" "install_meslo-nerd-font.log" brew install --cask font-meslo-lg-nerd-font
# brew install --cask iterm2 >> install_iterm2.log 2>&1
install_and_log "iterm2" "install_iterm2.log" brew install --cask iterm2
# RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" >> install_ohmyzsh.log 2>&1
install_and_log "ohmyzsh" "install_ohmyzsh.log" env RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install tmux
install_and_log "tmux" "install_tmux.log" brew install tmux
# brew install --cask google-chrome
# brew install --cask visual-studio-code
# brew install --cask karabiner-elements


install_and_log_allow_fail() {
    local app="$1"
    local logfile="$2"
    shift 2
    printf "installing %s..." "$app"
    "$@" >> "$logfile" 2>&1 || true
    printf "completed\n"
}

# git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k >> install_powerlevel10k.log 2>&1 || true
install_and_log_allow_fail "p10k" "install_p10k.log" git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions >> install_autosuggestions.log 2>&1 || true
install_and_log_allow_fail "autosuggestions" "install_autosuggestions.log" git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting >> install_syntax-highlighting.log 2>&1 || true
install_and_log_allow_fail "syntax-highlighting" "install_syntax-highlighting.log" git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# git clone https://github.com/LianhangZ/postgresql-15.15.git ~/postgresql-15.15

printf "starting link..."
mkdir -p ~/.config
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/dotfiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
printf "completed\n"
