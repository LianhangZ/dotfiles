install_nvim() {
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
}

install_lazygit() {
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": *"v\K[^"]*')
  LAZYGIT_ARCH=$(uname -m | sed -e 's/aarch64/arm64/' -e 's/x86_64/x86_64/')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
  tar xf lazygit.tar.gz lazygit
  sudo install lazygit -D -t /usr/local/bin/
  rm lazygit.tar.gz lazygit
}

install_zsh() { sudo apt install -y zsh; }

install_docker() {
  curl -fsSL https://get.docker.com | sh
  sudo usermod -aG docker $USER
  newgrp docker
  sudo systemctl enable docker
  sudo systemctl start docker
}

install_btop() { sudo apt install btop; }
install_rg() { sudo apt install ripgrep; }

# sudo apt install fd-find
