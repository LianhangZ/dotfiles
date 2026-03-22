
set -e

sudo -v || exit 1

printf "installing homebrew..."
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >> install_homebrew.log 2>&1

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
printf "completed\n"

printf "installing neovim..."
brew install neovim >> install_neovim.log 2>&1
printf "completed\n"
printf "installing meslo-nerd-font..."
brew install --cask font-meslo-lg-nerd-font >> install_meslo-nerd-font.log 2>&1
printf "completed\n"
printf "installing iterm2..."
brew install --cask iterm2 >> install_iterm2.log 2>&1
printf "completed\n"

printf "installing numpy..."
brew install numpy >> install_numpy.log 2>&1
printf "completed\n"
printf "installing python-setuptools..."
brew install python-setuptools >> install_setuptools.log 2>&1
printf "completed\n"

RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "installing powerlevel10k..."
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k >> install_powerlevel10k.log 2>&1 || true
printf "completed\n"
printf "installing autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions >> install_autosuggestions.log 2>&1 || true
printf "completed\n"
printf "installing syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting >> install_syntax-highlighting.log 2>&1 || true
printf "completed\n"

printf "starting link..."
rm ~/.zshrc
mkdir -p ~/.config
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/dotfiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
printf "completed\n"
