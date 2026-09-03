install_docker() {
  curl -fsSL https://get.docker.com | sh
  sudo usermod -aG docker $USER
  newgrp docker
  sudo systemctl enable docker
  sudo systemctl start docker
}

install_btop() { sudo apt install btop; }

# sudo apt install fd-find

install_waybar() { sudo apt install waybar; }

install_sway() { sudo apt install sway; }
