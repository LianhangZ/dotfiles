# ~/dotfiles/linux/ubuntu/link.sh
bash ~/dotfiles/linux/shared/shell/link.sh

ln -sf ~/dotfiles/linux/ubuntu/nvim/lazy-lock.json \
  ~/.config/nvim/lazy-lock.json

bash ~/dotfiles/shared/check_link.sh
