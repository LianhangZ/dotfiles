get_log_path() {
  echo "$HOME/dotfiles/log/install_$1.log"
}

check_install() {
  if "check_$1" > /dev/null 2>&1; then
    echo "$1 ALREADY installed"
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

install_app() {
  printf "installing $1"
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

install_brew() {
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

check_brew() { command -v brew; }

install_zsh() { sudo apt install -y zsh; }

check_zsh() { command -v zsh; }

install_nvim() {
  if [[ "$(uname -s)" == "Darwin" ]]; then
    brew install neovim
  elif [[ "$(uname -s)" == "Linux" ]]; then
    ARCH="$(uname -m)"

    if [ "$ARCH" = "x86_64" ]; then
      NVIM_TAR="nvim-linux-x86_64.tar.gz"
      NVIM_DIR="nvim-linux-x86_64"
    elif [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
      NVIM_TAR="nvim-linux-arm64.tar.gz"
      NVIM_DIR="nvim-linux-arm64"
    else
      echo "Unsupported architecture: $ARCH"
      exit 1
    fi

    cd /tmp

    curl -LO "https://github.com/neovim/neovim/releases/latest/download/$NVIM_TAR"

    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf "$NVIM_TAR"
    sudo mv "/opt/$NVIM_DIR" /opt/nvim

    sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
  fi
}

install_lazygit() {
  if [[ "$(uname -s)" == "Darwin" ]]; then
    brew install lazygit
  elif [[ "$(uname -s)" == "Linux" ]]; then
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": *"v\K[^"]*')
    LAZYGIT_ARCH=$(uname -m | sed -e 's/aarch64/arm64/' -e 's/x86_64/x86_64/')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit -D -t /usr/local/bin/
    rm lazygit.tar.gz lazygit
  fi
}

check_lazygit() { command -v lazygit; }

install_rg() {
  if [[ "$(uname -s)" == "Darwin" ]]; then
    brew install ripgrep
  elif [[ "$(uname -s)" == "Linux" ]]; then
    sudo apt install ripgrep
  fi
}

check_rg() { command -v rg; }

install_fd() { brew install fd; }

check_fd() { command -v fd; }

install_wezterm() { brew install --cask wezterm; }

check_wezterm() { command -v wezterm; }

install_aerospace() { brew install --cask nikitabobko/tap/aerospace; }

check_aerospace() { command -v aerospace; }

install_sketchybar() {
  brew tap FelixKratz/formulae
  brew trust felixkratz/formulae
  brew install sketchybar
}

check_sketchybar() { command -v sketchybar; }

link_zsh() {
  # echo "$1/zshrc"
  ln -sf "$1/zshrc"    ~/.zshrc
  ln -sf "$1/zshenv"   ~/.zshenv
  ln -sf "$1/p10k.zsh" ~/.p10k.zsh
}

link_nvim() {
  DOT_NVIM="$HOME/dotfiles/shared/nvim"
  mkdir -p ~/.config/nvim
  ln -sf "$DOT_NVIM/lua"             ~/.config/nvim/lua
  ln -sf "$DOT_NVIM/.neoconf.json"   ~/.config/nvim/.neoconf.json
  ln -sf "$DOT_NVIM/init.lua"        ~/.config/nvim/init.lua
  ln -sf "$DOT_NVIM/lazyvim.json"    ~/.config/nvim/lazyvim.json
  ln -sf "$DOT_NVIM/stylua.toml"     ~/.config/nvim/stylua.toml
}

get_lazygit_path() {
  if [[ "$(uname -s)" == "Darwin" ]]; then
    echo "$HOME/Library/Application Support/lazygit"
  elif [[ "$(uname -s)" == "Linux" ]]; then
    echo "$HOME/.config/lazygit"
  fi
}

link_lazygit() {
  CONFIG="$HOME/dotfiles/shared/lazygit-config.yml"
  mkdir -p "$(get_lazygit_path)"
  ln -sf "$CONFIG" "$(get_lazygit_path)/config.yml"
}
