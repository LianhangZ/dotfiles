rm -f ~/.zshrc
rm -f ~/.zshenv
ln -sf ~/dotfiles/ubuntu/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/ubuntu/zsh/zshenv ~/.zshenv

rm -f ~/.config/nvim/lazy-lock.json
ln -sf ~/dotfiles/ubuntu/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json

rm -f ~/.p10k.zsh
ln -sf ~/dotfiles/ubuntu/zsh/p10k.zsh ~/.p10k.zsh

bash ~/dotfiles/shared/link.sh
