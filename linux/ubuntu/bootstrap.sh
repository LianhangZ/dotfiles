# ~/dotfiles/linux/ubuntu/bootstrap.sh
sudo -v

printf "apt updating -> "
sudo apt update >/dev/null 2>&1
echo "updating complete"

mkdir -p ~/.config/nvim

bash ~/dotfiles/linux/shared/check.sh

# if [ ! -f ~/.ssh/server-1 ]; then
  # ssh-keygen -t ed25519 -C "server-1" -f ~/.ssh/server-1 -N "" > ~/dotfiles/ubuntu/keygen.log 2>&1
# fi

git config --global user.name "Lianhang Zhang"
git config --global user.email "148300543+LianhangZ@users.noreply.github.com"

bash ~/dotfiles/linux/ubuntu/link.sh

chsh -s $(which zsh)
