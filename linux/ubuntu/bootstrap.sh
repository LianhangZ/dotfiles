# ~/dotfiles/linux/ubuntu/bootstrap.sh
sudo -v

mkdir -p ~/.config/nvim

bash ~/dotfiles/linux/shared/shell/check.sh

git config --global user.name "Lianhang Zhang"
git config --global user.email "148300543+LianhangZ@users.noreply.github.com"

bash ~/dotfiles/linux/ubuntu/link.sh

chsh -s $(which zsh)
