# ~/dotfiles/linux/pi/link.sh
bash ~/dotfiles/linux/shared/shell/link.sh

ln -sf ~/dotfiles/linux/pi/nvim/lazy-lock.json \
  ~/.config/nvim/lazy-lock.json

bash ~/dotfiles/shared/check_link.sh
