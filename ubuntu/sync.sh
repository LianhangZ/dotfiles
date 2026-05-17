unlink ~/.zshrc
unlink ~/.zshenv
ln -sf ~/dotfiles/ubuntu/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/ubuntu/zsh/zshenv ~/.zshenv

unlink ~/.config/nvim/lazy-lock.json
ln -sf ~/dotfiles/ubuntu/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json

bash ~/dotfiles/shared/link.sh
